#!/bin/bash

red="\033[31m"
green="\033[32m"
white="\033[0m"

out_dir=out
openwrt_dir=openwrt
boot_dir="/media/boot"
rootfs_dir="/media/rootfs"
device=""
loop=

choose=1

if [ $choose -eq 1 ]; then
    device="n1"
elif [ $choose -eq 2 ]; then
    device="beikeyun"
else
    echo -e "$red \n 请选择正确的设备, 1. 斐讯N1 / 2. 贝壳云 ! $white" && exit
fi

# 清理重构目录
if [ -d $out_dir ]; then
    sudo rm -rf $out_dir
fi

mkdir -p $out_dir/openwrt
sudo mkdir -p $rootfs_dir

# 解压openwrt固件
cd $openwrt_dir
if [ -f *ext4-factory.img.gz ]; then
    gzip -d *ext4-factory.img.gz
elif [ -f *root.ext4.gz ]; then
    gzip -d *root.ext4.gz
elif [ -f *rootfs.tar.gz ] || [ -f *ext4-factory.img ] || [ -f *root.ext4 ]; then
    [ ]
else
    echo -e "$red \n openwrt目录下不存在固件或固件类型不受支持! $white" && exit
fi

# 挂载openwrt固件
if [ -f *rootfs.tar.gz ]; then
    sudo tar -xzf *rootfs.tar.gz -C ../$out_dir/openwrt
elif [ -f *ext4-factory.img ]; then
    loop=$(sudo losetup -P -f --show *ext4-factory.img)
    if ! sudo mount -o rw ${loop}p2 $rootfs_dir; then
        echo -e "$red \n 挂载OpenWrt镜像失败! $white" && exit
    fi
elif [ -f *root.ext4 ]; then
    sudo mount -o loop *root.ext4 $rootfs_dir
fi

# 拷贝openwrt rootfs
echo -e "$green \n 提取OpenWrt ROOTFS... $white"
cd ../$out_dir
if df -h | grep $rootfs_dir > /dev/null 2>&1; then
    sudo cp -r $rootfs_dir/* openwrt/ && sync
    sudo umount $rootfs_dir
    [ $loop ] && sudo losetup -d $loop
fi

sudo cp -r ../armbian/$device/rootfs/* openwrt/ && sync
sudo chown -R root:root openwrt/

# 制作可启动镜像
rootfssize=512

openwrtsize=$(sudo du -hs openwrt | cut -d "M" -f 1)
[ $rootfssize -lt $openwrtsize ] &&
    echo -e "$red \n ROOTFS分区最少需要 $openwrtsize M! $white" &&
    exit

echo -e "$green \n 生成空镜像(.img)... $white"
fallocate -l $(($rootfssize + 145))M "$(date +%Y-%m-%d)-openwrt-${device}-auto-generate.img"

echo -e "$green \n 分区... $white"
parted -s *.img mklabel msdos
parted -s *.img mkpart primary ext4 17M 151M
parted -s *.img mkpart primary ext4 152M 100%

# 格式化镜像
echo -e "$green \n 格式化... $white"
loop=$(sudo losetup -P -f --show *.img)
[ ! $loop ] &&
    echo -e "$red \n 格式化失败! $white" &&
    exit

if [ $device = "n1" ]; then
    sudo mkfs.vfat -n "BOOT" ${loop}p1 > /dev/null 2>&1
elif [ $device = "beikeyun" ]; then
    sudo mke2fs -F -q -t ext4 -L "BOOT" -m 0 ${loop}p1 > /dev/null 2>&1
fi
sudo mke2fs -F -q -t ext4 -L "ROOTFS" -m 0 ${loop}p2 > /dev/null 2>&1

# 挂载分区
sudo mkdir -p $boot_dir
sudo mount -o rw ${loop}p1 $boot_dir
sudo mount -o rw ${loop}p2 $rootfs_dir

# 拷贝文件到启动镜像
cd ../
echo -e "$green \n 拷贝文件到启动镜像... $white"
sudo cp -r armbian/$device/boot/* $boot_dir
sudo mv $out_dir/openwrt/* $rootfs_dir
sync

# 取消分区挂载
if df -h | grep $boot_dir > /dev/null 2>&1; then
    sudo umount $boot_dir
fi

if df -h | grep $rootfs_dir > /dev/null 2>&1; then
    sudo umount $rootfs_dir
fi

[ $loop ] && sudo losetup -d $loop

# 清理残余
sudo rm -rf $boot_dir
sudo rm -rf $rootfs_dir
sudo rm -rf $out_dir/openwrt

# 添加idb标识以及uboot
if [ $device = "beikeyun" ]; then
    img=$(ls -l $out_dir | grep img | awk '{ print $9 }')
    echo -e "$green \n 写入idb... $white"
    dd if=armbian/beikeyun/loader/idbloader.img of=$out_dir/$img bs=16 seek=2048 conv=notrunc > /dev/null 2>&1
    echo -e "$green \n 写入uboot... $white"
    dd if=armbian/beikeyun/loader/uboot.img of=$out_dir/$img bs=16 seek=524288 conv=notrunc > /dev/null 2>&1
fi

echo -e "$green \n 制作成功, 输出文件夹 --> $out_dir $white"

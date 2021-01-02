-- Copyright 2020 Lienol
module("luci.controller.tvb", package.seeall)

function index()
    entry({"tvb"}, call("tvb")).leaf = true
end

local function get_urlencode(c)
    return string.format("%%%02X", string.byte(c))
end

local function urlEncode(szText)
    local str = szText:gsub("([^0-9a-zA-Z ])", get_urlencode)
    str = str:gsub(" ", "+")
    return str
end

function tvb()
    local id = luci.http.formvalue("id")
    if id then
        luci.sys.call("mkdir -p /tmp/tvb")
        local d = os.date("%Y%m%d")
        local has = luci.sys.exec(string.format("[ -f '/tmp/tvb/%s' ] && echo -n $(cat /tmp/tvb/%s)", d .. "_" .. id, d .. "_" .. id ))
        if has and has ~= "" then
            luci.http.redirect(has)
        else
            local url = "http://news.tvb.com/ajax_call/getVideo.php?token="
            local token_url = "http://token.tvb.com/stream/live/hls"
            if id == "1" then
                token_url = token_url .. "/mobilehd_news_windows1.smil?app=news"
            elseif id == "2" then
                token_url = token_url .. "/mobilehd_finance.smil?app=news"
            elseif id == "3" then
                token_url = token_url .. "/mobilehd_newsevent1.smil?app=news"
            end
            token_url = token_url .. "&feed&client_ip="
            url = url .. urlEncode(token_url)
            local result = luci.sys.exec("curl -skL " .. url)
            local json = require "luci.jsonc".parse(result)
            if json then
                local redirect_url = json.url
                luci.sys.call("rm -rf /tmp/tvb/*_" .. id)
                luci.sys.call(string.format("echo '%s' > /tmp/tvb/%s", redirect_url, d .. "_" .. id))
                luci.http.redirect(redirect_url)
            else
                luci.http.status(404)
            end
        end
    end
end

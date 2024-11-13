--
-- Based on 'mpv-zenity-open-files'(https://github.com/alifarazz/mpv-zenity-open-files)
--
-- Default keybindings:
--      CTRL+SHIFT+s: search video in youtube.
--
table.unpack = table.unpack or unpack
utils = require 'mp.utils'
limit = 5

function invoke_zenity(args) 
    return utils.subprocess({
        args = { 'zenity', table.unpack(args) },
        cancellable = false,
    })
end

function search_youtube()
    local url_select = invoke_zenity({
        '--entry',
        '--title=Search Youtube',
        '--window-icon=mpv',
        '--text=Enter Search Text:'
    })
    if (url_select.status ~= 0) then
        return
    end

    for filename in string.gmatch(url_select.stdout, '[^\n]+') do
        mp.commandv('loadfile', "ytdl://ytsearch" .. limit .. ":" .. filename, 'replace')
    end
end

mp.add_key_binding("CTRL+SHIFT+s", "search_youtube", search_youtube)

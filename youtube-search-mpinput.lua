-- Default keybindings:
--      CTRL+SHIFT+s: search video in youtube.
--
local input = require("mp.input")
local limit = 5

mp.add_key_binding("CTRL+SHIFT+s", "search_youtube", function()
	input.get({
		prompt = "Search Youtube:",
		submit = function(query)
			mp.commandv("loadfile", "ytdl://ytsearch" .. limit .. ":" .. query, "replace")
			input.terminate()
		end,
	})
end)

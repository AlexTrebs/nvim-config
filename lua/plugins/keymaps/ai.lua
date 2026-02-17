local _99 = require("99")
local set = vim.keymap.set

set("v", "<leader>a", function()
	_99.visual()
end)

set("v", "<leader>as", function()
	_99.stop_all_requests()
end)

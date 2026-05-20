local set = vim.keymap.set

-- Window/pane navigation (nvim-tmux-navigation handles splits + tmux panes)
local nav = require("nvim-tmux-navigation")
nav.setup({ disable_when_zoomed = true })
set("n", "<C-h>", nav.NvimTmuxNavigateLeft)
set("n", "<C-j>", nav.NvimTmuxNavigateDown)
set("n", "<C-k>", nav.NvimTmuxNavigateUp)
set("n", "<C-l>", nav.NvimTmuxNavigateRight)

-- Resize splits
set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")

-- Move lines
set("n", "<M-j>", function()
	if vim.opt.diff:get() then
		vim.cmd([[normal! ]c]])
	else
		vim.cmd([[m .+1<CR>==]])
	end
end)
set("n", "<M-k>", function()
	if vim.opt.diff:get() then
		vim.cmd([[normal! [c]])
	else
		vim.cmd([[m .-2<CR>==]])
	end
end)

-- Clear search highlight on <CR>
set("n", "<CR>", function()
	if vim.opt.hlsearch:get() then
		vim.cmd.nohl()
		return ""
	else
		return "<CR>"
	end
end, { expr = true })

-- Quick access to cheatsheet (opens in browser with formatting)
set("n", "<leader>ch", function()
	vim.cmd("e ~/.config/nvim/CHEATSHEET.md")
	vim.cmd("MarkdownPreview")
end, { desc = "Open cheatsheet (formatted)" })

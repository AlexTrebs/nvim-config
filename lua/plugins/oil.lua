require("oil").setup({
	default_file_explorer = false,
	keymaps = {
		["<CR>"] = "actions.select",
		["-"] = "actions.parent",
		["_"] = "actions.open_cwd",
		["gs"] = "actions.change_sort",
		["g."] = "actions.toggle_hidden",
		["<C-p>"] = "actions.preview",
		["q"] = "actions.close",
	},
	use_default_keymaps = false,
	view_options = {
		show_hidden = false,
	},
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory in Oil" })

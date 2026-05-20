require("gitsigns").setup({
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns
		local opts = { buffer = bufnr }
		vim.keymap.set("n", "]h", gs.next_hunk, opts)
		vim.keymap.set("n", "[h", gs.prev_hunk, opts)
		vim.keymap.set("n", "<leader>hs", gs.stage_hunk, opts)
		vim.keymap.set("n", "<leader>hu", gs.undo_stage_hunk, opts)
		vim.keymap.set("n", "<leader>hp", gs.preview_hunk, opts)
		vim.keymap.set("n", "<leader>hb", function() gs.blame_line({ full = true }) end, opts)
	end,
})

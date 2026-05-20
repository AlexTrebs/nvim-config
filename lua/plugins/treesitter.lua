vim.opt.runtimepath:prepend(vim.fn.stdpath("config") .. "/plugged/nvim-treesitter/runtime")

require("nvim-treesitter").setup()

vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		pcall(vim.treesitter.start, args.buf)
	end,
})

local ok, autotag = pcall(require, "nvim-ts-autotag")
if ok then
	autotag.setup({
		opts = {
			enable_close = true,
			enable_rename = true,
			enable_close_on_slash = true,
		},
		per_filetype = {
			["html"] = { enable_close = true },
			["javascript"] = { enable_close = true },
			["typescript"] = { enable_close = true },
			["javascriptreact"] = { enable_close = true },
			["typescriptreact"] = { enable_close = true },
			["svelte"] = { enable_close = true },
		},
	})
end

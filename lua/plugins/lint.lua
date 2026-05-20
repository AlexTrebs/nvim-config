local lint = require("lint")

lint.linters_by_ft = {
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	javascriptreact = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	python = { "ruff" },
	sh = { "shellcheck" },
	go = { "golangcilint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
	callback = function()
		lint.try_lint()
	end,
})

vim.keymap.set("n", "<leader>cl", function() lint.try_lint() end, { desc = "Trigger linting" })

-- nvim-autopairs (works independently alongside blink.cmp)
require("nvim-autopairs").setup({
	check_ts = true,
})

-- flash.nvim
require("flash").setup()
vim.keymap.set({ "n", "x", "o" }, "s", function() require("flash").jump() end, { desc = "Flash jump" })
vim.keymap.set({ "n", "x", "o" }, "S", function() require("flash").treesitter() end, { desc = "Flash treesitter" })
vim.keymap.set("o", "r", function() require("flash").remote() end, { desc = "Remote flash" })
vim.keymap.set({ "o", "x" }, "R", function() require("flash").treesitter_search() end, { desc = "Flash treesitter search" })

-- persistence.nvim (session management)
require("persistence").setup()
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end, { desc = "Restore session" })
vim.keymap.set("n", "<leader>qS", function() require("persistence").select() end, { desc = "Select session" })
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end, { desc = "Restore last session" })
vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end, { desc = "Don't save session on exit" })

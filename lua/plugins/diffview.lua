require("diffview").setup()

vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Diffview: open git diff" })
vim.keymap.set("n", "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", { desc = "Diffview: file history" })
vim.keymap.set("n", "<leader>gH", "<cmd>DiffviewFileHistory<cr>", { desc = "Diffview: repo history" })
vim.keymap.set("n", "<leader>gc", "<cmd>DiffviewClose<cr>", { desc = "Diffview: close" })

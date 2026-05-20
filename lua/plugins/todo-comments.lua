require("todo-comments").setup()

vim.keymap.set("n", "]t", function() require("todo-comments").jump_next() end, { desc = "Next TODO" })
vim.keymap.set("n", "[t", function() require("todo-comments").jump_prev() end, { desc = "Previous TODO" })
vim.keymap.set("n", "<leader>xt", "<cmd>Trouble todo toggle<cr>", { desc = "TODO list (Trouble)" })
vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find TODOs" })

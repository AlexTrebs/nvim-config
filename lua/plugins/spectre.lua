require("spectre").setup()

vim.keymap.set("n", "<leader>sr", function() require("spectre").open() end, { desc = "Spectre: project replace" })
vim.keymap.set("n", "<leader>sw", function() require("spectre").open_visual({ select_word = true }) end, { desc = "Spectre: replace word under cursor" })
vim.keymap.set("v", "<leader>sw", function() require("spectre").open_visual() end, { desc = "Spectre: replace selection" })
vim.keymap.set("n", "<leader>sf", function() require("spectre").open_file_search({ select_word = true }) end, { desc = "Spectre: replace in file" })

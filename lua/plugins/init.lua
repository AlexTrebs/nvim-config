local Plug = vim.fn["plug#"]

local home = os.getenv("HOME")
vim.call("plug#begin", home .. "/.config/nvim/plugged")

-- ========== CORE ==========
Plug("nvim-lua/plenary.nvim")

-- ========== LSP ==========
Plug("neovim/nvim-lspconfig")
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")
Plug("WhoIsSethDaniel/mason-tool-installer.nvim")
Plug("b0o/SchemaStore.nvim")
Plug("folke/lazydev.nvim")

-- ========== CMP ==========
Plug("saghen/blink.lib")
Plug("saghen/blink.cmp")
Plug("L3MON4D3/LuaSnip")

-- ========== TREESITTER ==========
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("windwp/nvim-ts-autotag")

-- ========== UI ==========
Plug("romgrk/barbar.nvim")
Plug("nvim-lualine/lualine.nvim")
Plug("j-hui/fidget.nvim")
Plug("nvim-tree/nvim-tree.lua")
Plug("nvim-tree/nvim-web-devicons")
Plug("folke/noice.nvim")
Plug("MunifTanjim/nui.nvim")
Plug("folke/which-key.nvim")
Plug("echasnovski/mini.surround")
Plug("lewis6991/gitsigns.nvim")
Plug("folke/trouble.nvim")
Plug("folke/snacks.nvim")

-- ========== TELESCOPE ==========
Plug("nvim-telescope/telescope.nvim")
Plug("nvim-telescope/telescope-fzf-native.nvim", { ["do"] = "make" })
Plug("nvim-telescope/telescope-ui-select.nvim")
Plug("nvim-telescope/telescope-smart-history.nvim")
Plug("kkharji/sqlite.lua")

-- ========== DAP ==========
Plug("mfussenegger/nvim-dap")
Plug("rcarriga/nvim-dap-ui")
Plug("leoluz/nvim-dap-go")
Plug("theHamsta/nvim-dap-virtual-text")
Plug("nvim-neotest/nvim-nio")

-- ========== FILES / NAVIGATION ==========
Plug("ThePrimeagen/harpoon", { branch = "harpoon2" })
Plug("alexghergh/nvim-tmux-navigation")
Plug("stevearc/oil.nvim")

-- ========== FORMATTING ==========
Plug("stevearc/conform.nvim")

-- ========== DATABASE ==========
Plug("tpope/vim-dadbod")
Plug("kristijanhusak/vim-dadbod-ui")
Plug("kristijanhusak/vim-dadbod-completion")

-- ========== EDITING ==========
Plug("windwp/nvim-autopairs")
Plug("folke/flash.nvim")
Plug("folke/persistence.nvim")
Plug("folke/todo-comments.nvim")
Plug("nvim-pack/nvim-spectre")
Plug("mfussenegger/nvim-lint")
Plug("sindrets/diffview.nvim")

-- ========== MISC ==========
Plug("iamcco/markdown-preview.nvim", { ["do"] = "cd app && npm install" })
Plug("ThePrimeagen/99")

-- ========== MARKDOWN ==========
Plug("MeanderingProgrammer/render-markdown.nvim")

vim.call("plug#end")

-- After plugin load → load configs
require("plugins.nvimtree")
require("plugins.barbar-config")
require("plugins.lua_line")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.ui")
require("plugins.telescope")
require("plugins.dap")
require("plugins.formatter")
require("plugins.database")
require("plugins.noice")
require("plugins.markdown")
require("plugins.ai")
require("plugins.markdown-render")
require("plugins.gitsigns")
require("plugins.trouble")
require("plugins.snacks")
require("plugins.oil")
require("plugins.editing")
require("plugins.todo-comments")
require("plugins.spectre")
require("plugins.lint")
require("plugins.diffview")

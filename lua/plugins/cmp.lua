require("blink.cmp").setup({
	keymap = {
		preset = "none",
		["<Tab>"] = { "select_next", "fallback" },
		["<S-Tab>"] = { "select_prev", "fallback" },
		["<CR>"] = { "accept", "fallback" },
		["<C-Space>"] = { "show", "fallback" },
	},
	snippets = { preset = "luasnip" },
	sources = {
		default = { "lsp", "path", "buffer", "snippets" },
		providers = {
			lsp = { score_offset = 100 },
			snippets = { score_offset = 75 },
			buffer = { score_offset = 50 },
			path = { score_offset = 25 },
		},
	},
	completion = {
		ghost_text = { enabled = true },
		trigger = { show_on_insert_on_trigger_character = true },
	},
	fuzzy = { implementation = "lua" },
})

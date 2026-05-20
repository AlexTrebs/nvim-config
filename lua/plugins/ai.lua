local cwd = vim.uv.cwd()
local basename = vim.fs.basename(cwd)

local _99 = require("99")

_99.setup({
	provider = _99.Providers.ClaudeCodeProvider,
	model = "claude-sonnet-4-6",
	logger = {
		level = _99.DEBUG,
		path = "/tmp/" .. basename .. ".99.debug",
		print_on_error = true,
	},
	completion = {
		custom_rules = {
			"scratch/custom_rules/",
		},
		files = {},
		source = "native",
	},
	md_files = {
		"AGENT.md",
	},
})

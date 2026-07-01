require("plugins.lazydev")

require("blink.cmp").setup {
	keymap = {
		preset = "default",
		["<return>"] = { "accept", "fallback" },
		["<tab>"] = { "select_next", "fallback" },
		["<C-tab>"] = { "select_prev", "fallback" },
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer", "lazydev" },
		providers = {
			lazydev = {
				module = "lazydev.integrations.blink",
				fallbacks = { "lsp" },
			},
		},
	},
	cmdline = {
		enabled = false,
	},
}

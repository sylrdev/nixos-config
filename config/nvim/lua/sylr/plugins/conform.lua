require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		luau = { "stylua" },
	},
	default_format_opts = {
		lsp_format = "fallback",
	},
	format_on_save = {
		timeout_ms = 500,
	},
})

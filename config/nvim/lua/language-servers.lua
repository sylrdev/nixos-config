-- luau lsp
vim.lsp.config("luau-lsp", {
	settings = {
		["luau-lsp"] = {
			completion = {
				autocompleteEnd = true,
				imports = {
					separateGroupsWithLine = true,
					stringRequires = {
						enabled = true,
					},
				},
				showDeprecatedItems = false,
			},
			fflags = {
				enableNewSolver = false,
			},
			hover = {
				multilineFunctionDefinitions = true,
				showTableKinds = true,
			},
			platform = {
				type = "roblox",
			},
			plugin = {
				enabled = true,
			},
		},
	},
})

require("luau-lsp").setup {
	platform = {
		type = "roblox",
	},
	types = {
		roblox_security_level = "PluginSecurity",
	},
	fflags = {
		enable_new_solver = false,
	},
	plugin = {
		enabled = true,
	},
}

-- other lsp
vim.lsp.enable {
	"lua_ls",
	"nixd",
}

return {
	"neovim/nvim-lspconfig",

	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"saghen/blink.cmp",
	},
	opts = {
		servers = {
			lua_ls = {},
			clangd = {},
			marksman = {},
			gopls = {},
			dartls = {},
		},
	},

	config = function(_, opts)
		local lsp = require("lspconfig")
		local util = lsp.util
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "clangd", "marksman", "gopls" },
			handlers = {
				["lua_ls"] = function()
					lsp.lua_ls.setup({
						settings = {
							completion = {
								callSnippet = "Replace",
							},
							diagnostics = {
								disable = { "missing-fields" },
							},
						},
					})
				end,
				["clangd"] = function()
					lsp.clangd.setup({})
				end,
				["marksman"] = function()
					lsp.marksman.setup({})
				end,
				["gopls"] = function()
					lsp.gopls.setup({})
				end,
			},
		})
		lsp.dartls.setup({
			init_options = {
				onlyAnalyzeProjectsWithOpenFiles = true,
				suggestFromUnimportedLibraries = true,
				closingLabels = false,
				outline = false,
				flutterOutline = false,
			},
			settings = {
				dart = {
					completeFunctionCalls = true,
					showTodos = true,
					renameFilesWithClasses = "always",
					enableSnippets = true,
					updateImportsOnRename = true,
				},
			},
		})

		for server, config in pairs(opts.servers) do
			local capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			config.capabilities = capabilities
			lsp[server].setup(config)
		end
	end,
}

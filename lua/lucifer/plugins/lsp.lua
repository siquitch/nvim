local servers = { "lua_ls", "clangd", "marksman", "gopls", "arduino_language_server" }
local map = vim.keymap

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }
		map.set("n", "gd", vim.lsp.buf.definition, opts)
		map.set("n", "K", vim.lsp.buf.hover, opts)
		map.set("n", "gh", vim.lsp.buf.signature_help, opts)
		map.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
		map.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		map.set("n", "gr", vim.lsp.buf.references, opts)
		map.set("n", "<leader>fm", function()
			if vim.bo.filetype == "lua" then
				require("stylua").format()
			else
				vim.lsp.buf.format({ async = true })
			end
		end, opts)
	end,
})

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
		require("mason").setup()
		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = servers,
			handlers = {
				["lua_ls"] = function()
					lsp.lua_ls.setup({
						settings = {
							Lua = {
								vim.api,
							},
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
				["arduino_language_server"] = function()
					lsp.arduino_language_server.setup({
						cmd = {
							"arduino-language-server",
							"-cli-config",
							"C:\\Users\\Eli\\AppData\\Local\\Arduino15\\arduino-cli.yaml",
							"-fqbn",
							"arduino:avr:uno",
						},
					})
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
			lsp[server].setup({ capabilities = capabilities })
		end
	end,
}

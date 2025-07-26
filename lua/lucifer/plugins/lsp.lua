local servers = { "lua_ls", "clangd", "marksman", "gopls", "arduino_language_server" }
local map = vim.keymap

-- vim.lsp.config(
-- 	"arduino_language_server",
--     {cmd = {
-- 		"arduino-language-server",
-- 		"-cli-config",
-- 		"C:\\Users\\Eli\\AppData\\Local\\Arduino15\\arduino-cli.yaml",
-- 		"-fqbn",
-- 		"arduino:avr:uno",
-- 	},
-- })
--

vim.lsp.config("dartls", {
	cmd = { "dart", "language-server", "--protocol=lsp" },
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
vim.lsp.enable("dartls", true)

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
		map.set("n", "fa", vim.lsp.buf.code_action, opts)
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
			ts_ls = {},
			eslint = {},
		},
	},
	config = function(_, _)
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = servers,
			automatic_enable = true,
		})
	end,
}

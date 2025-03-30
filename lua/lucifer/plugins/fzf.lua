return {
	"ibhagwan/fzf-lua",
	dependencies = { "icons" },
	opts = {
		defaults = {
			prompt = "> ",
			formatter = "path.filename_first",
			cwd_prompt = false,
			previewer = false,
		},
		keymap = {
			builtin = {
				["<c-d>"] = "preview-page-down",
				["<c-u>"] = "preview-page-up",
			},
		},
		grep = {
			previewer = true,
		},
	},
	keys = function()
		local fzf = require("fzf-lua")
		return {
			{
				"<leader>ff",
				fzf.files,
				desc = "Find files",
			},
			{
				"<leader>f;",
				fzf.resume,
				desc = "Find files",
			},
			{
				"<leader>fa",
				fzf.lsp_code_actions,
				desc = "Find files",
			},
			{
				"<leader>f.",
				fzf.oldfiles,
				desc = "Find files hidden included",
			},
			{
				"<leader>fg",
				fzf.live_grep,
				desc = "Global search",
			},
			{
				"<leader>fd",
				fzf.diagnostics_document,
				desc = "Diagnostics",
			},
			{
				"<leader>f/",
				fzf.grep_curbuf,
				desc = "Search buffer",
			},
			{
				"<leader>fr",
				fzf.lsp_references,
				desc = "Find references",
			},
			{
				"<leader>fh",
				fzf.help_tags,
				desc = "Help",
			},
			{
				"<leader>fs",
				fzf.lsp_document_symbols,
				desc = "Document symbols",
			},
		}
	end,
}

return {
	"ibhagwan/fzf-lua",
	dependencies = { "icons" },
	opts = {
		keymap = {
			builtin = {
				["<c-d>"] = "preview-page-down",
				["<c-u>"] = "preview-page-up",
			},
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
			{
				"<leader>gf",
				fzf.git_files,
				desc = "Git files",
			},
			{
				"<leader>gc",
				fzf.git_commits,
				desc = "Git commits",
			},
			{
				"<leader>gg",
				fzf.git_branches,
				desc = "Git branches",
			},
			{
				"<leader>gs",
				fzf.git_status,
				desc = "Git status",
			},
		}
	end,
}

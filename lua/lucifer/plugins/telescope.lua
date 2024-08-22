return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			{ "plenary" },
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			{ "debugloop/telescope-undo.nvim" },
		},
		opts = {
			defaults = {
				layout_strategy = "center",
				layout_config = {
					center = {
						preview_cutoff = 20,
                        width = 0.8,
					},
				},
				path_display = { truncate = 3 },
			},
		},
		init = function()
			require("telescope").load_extension("fzf")
			require("telescope").load_extension("flutter")
			require("telescope").load_extension("undo")
		end,
		keys = function()
			local builtin = require("telescope.builtin")
			return {
				{
					"<leader>ff",
					builtin.fd,
					desc = "Find files",
				},
				{
					"<leader>f.",
					function()
						builtin.fd({ hidden = true })
					end,
					desc = "Find files hidden included",
				},
				{
					"<leader>fg",
					builtin.live_grep,
					desc = "Global search",
				},
				{
					"<leader>fd",
					builtin.diagnostics,
					desc = "Diagnostics",
				},
				{
					"<leader>f/",
					builtin.current_buffer_fuzzy_find,
					desc = "Search buffer",
				},
				{
					"<leader>fr",
					builtin.lsp_references,
					desc = "Find references",
				},
				{
					"<leader>fh",
					builtin.help_tags,
					desc = "Help",
				},
				{
					"<leader>fs",
					builtin.lsp_document_symbols,
					desc = "Document symbols",
				},
				{
					"<leader>fa",
					builtin.lsp_workspace_symbols,
					desc = "Workspace symbols",
				},
				{
					"<leader>fu",
					"<cmd>Telescope undo<cr>",
					desc = "Undo history",
				},
				{
					"<leader>rc",
					require("telescope").extensions.flutter.commands,
					desc = "Flutter commands",
				},
				{
					"<leader>gf",
					builtin.git_files,
					desc = "Git files",
				},
				{
					"<leader>gc",
					builtin.git_commits,
					desc = "Git commits",
				},
				{
					"<leader>gg",
					builtin.git_branches,
					desc = "Git branches",
				},
				{
					"<leader>gs",
					builtin.git_status,
					desc = "Git status",
				},
			}
		end,
	},
}

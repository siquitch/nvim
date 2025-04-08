return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		input = {},
		lazygit = {},
		---@type snacks.picker.Config
		picker = {
			layouts = {
				["plain"] = {
					layout = {
						backdrop = false,
						row = 1,
						width = 0.4,
						min_width = 80,
						height = 0.8,
						border = "none",
						box = "vertical",
						{
							box = "vertical",
							border = "rounded",
							title = "{title}",
							title_pos = "center",
							{ win = "input", height = 1, border = "bottom" },
							{ win = "list", border = "none" },
						},
					},
				},
			},
			formatters = {
				file = { filename_first = true },
			},
		},
		styles = {
			input = {
				bo = {
					filetype = "input",
				},
				row = function()
					return vim.o.lines / 2 - 5
				end,
			},
		},
	},
	keys = function()
		local snacks = require("snacks")
		local picker = snacks.picker
		local lg = snacks.lazygit
		return {
			{
				"<leader>lg",
				function()
					lg.open()
				end,
				desc = "Open LazyGit",
			},
			{
				"<leader>ff",
				function()
					picker.files({
						hidden = true,
						layout = "plain",
						matcher = { frecency = true },
					})
				end,
				desc = "Files",
			},
			{
				"<leader>f.",
				function()
					picker.buffers({layout = "plain"})
				end,
				desc = "Buffers",
			},
			{
				"<leader>fd",
				function()
					picker.diagnostics()
				end,
				desc = "Global diagnostics",
			},
			{
				"<leader>fg",
				function()
					picker.grep()
				end,
				desc = "Global grep",
			},
			{
				"<leader>f/",
				function()
					picker.lines()
				end,
				desc = "Lines in buffer",
			},
			{
				"<leader>fh",
				function()
					picker.help()
				end,
				desc = "Grep in buffer",
			},
			{
				"<leader>fs",
				function()
					picker.lsp_symbols({ layout = "plain" })
				end,
				desc = "Grep in buffer",
			},
			{
				"<leader>fr",
				function()
					picker.lsp_references()
				end,
				desc = "Grep in buffer",
			},
		}
	end,
}

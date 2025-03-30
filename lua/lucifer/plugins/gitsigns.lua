return {
	"lewis6991/gitsigns.nvim",
	lazy = false,
	opts = {
		current_line_blame_opts = {
			delay = 0,
		},
	},
	keys = function()
		local signs = require("gitsigns")
		return {
			{
				"<leader>gh",
				function()
					signs.preview_hunk()
				end,
				desc = "Preview hunk",
			},
			{
				"<leader>gs",
				function()
					signs.select_hunk()
				end,
				desc = "Preview hunk",
			},
			{
				"<leader>gb",
				function()
					signs.toggle_current_line_blame()
				end,
				desc = "Toggle line blame",
			},
			{
				"<leader>gr",
				function()
					signs.reset_hunk()
				end,
				desc = "Toggle line blame",
			},
		}
	end,
}

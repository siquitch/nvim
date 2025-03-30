return {
	"folke/trouble.nvim",
	dependencies = { "icons" },
	name = "trouble",
	keys = {
		{
			"<C-t>",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Trouble toggle workspace",
		},
	},
	opts = {
		win = {
			position = "right",
			size = {
				width = 50,
			},
		},
	},
}

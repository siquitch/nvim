return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},
	{
		"folke/which-key.nvim",
		dependencies = {
			"echasnovski/mini.icons",
		},
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			triggers = {
				{ "<auto>", mode = "nisotc" },
			},
			notify = false,
		},
	},
	{
		"folke/neoconf.nvim",
		cmd = "Neoconf",
	},
	"folke/neodev.nvim",
	{
		"nvim-tree/nvim-web-devicons",
		name = "icons",
	},
	{ "numToStr/Comment.nvim" },
	{ "j-hui/fidget.nvim", opts = {} },
}

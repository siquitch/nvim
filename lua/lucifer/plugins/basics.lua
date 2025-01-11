return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},
	{
		"folke/which-key.nvim",
		dependencies = { "icons" },
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
	{ "nvim-tree/nvim-web-devicons", name = "icons", opts = {} },
	{ "numToStr/Comment.nvim", opts = {} },
	{ "j-hui/fidget.nvim", opts = {} },
}

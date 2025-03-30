return {
	"stevearc/oil.nvim",
	dependencies = { "icons" },
	-- priority = 1000000,
	lazy = false,
	opts = {
		prompt_save_on_select_new_entry = false,
		keymaps = {
			["<C-h>"] = false,
			["<C-s>"] = false,
		},
		watch_for_changes = true,
	},
	keys = {
		{
			"<leader>o",
			function()
				require("oil").open()
			end,
		},
	},
}

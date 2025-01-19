return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	name = "harpoon",
	dependencies = { "plenary" },
	opts = {
		settings = {
			save_on_toggle = true,
		},
	},
	keys = function()
		local harpoon = require("harpoon")
		return {
			{
				"<leader>a",
				function()
					harpoon:list():add()
				end,
				desc = "harpoon add",
			},
			{
				"<C-e>",
				function()
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "harpoon quick menu",
			},
		}
	end,
}

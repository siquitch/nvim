return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "icons" },
	opts = {
		options = {
			theme = "catppuccin",
			globalstatus = true,
		},
		sections = {
			lualine_x = { "filetype" },
			lualine_y = { "searchcount" },
		},
		inactive_winbar = {
			lualine_z = { "filename" },
		},
	},
}

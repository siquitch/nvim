return {
	"wesleimp/stylua.nvim",
	keys = {
		{
			"<leader>lf",
			function()
				if vim.bo.filetype == "lua" then
					require("stylua").format()
				end
			end,
			desc = "Stylua format",
		},
	},
}

return {
	"stevearc/oil.nvim",
	dependencies = { "icons" },
	config = function()
		require("oil").setup({
			prompt_save_on_select_new_entry = false,
			keymaps = {
				["<C-h"] = false,
				["<C-s"] = false,
			},
		})
		vim.keymap.set("n", "<leader>o", "<cmd>Oil<CR>", { desc = "Toggle oil" })
	end,
}

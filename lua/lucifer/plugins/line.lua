return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "LspAttach",
	name = "line",
	priority = 1000,
	opts = {},
	keys = function()
		local line = require("tiny-inline-diagnostic")
		return {
			{
				"<leader>tl",
				line.toggle,
				"Toggle line diagnostics",
			},
		}
	end,
}

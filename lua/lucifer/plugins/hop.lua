return {
	"smoka7/hop.nvim",
	version = "v2",
	opts = {
		keys = "etovxqpdygfblzhckisuran",
	},
	keys = function()
		local hop = require("hop")
		local directions = require("hop.hint").HintDirection
		return {
			{
				"<leader>jw",
				function()
					hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = true })
				end,
				{ remap = true },
				desc = "Jump word",
			},
			{
				"<leader>jb",
				function()
					hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = true })
				end,
				{ remap = true },
				desc = "Jump word back",
			},
			{
				"<leader>jd",
				function()
					hop.hint_lines_skip_whitespace({ direction = directions.AFTER_CURSOR })
				end,
				{ remap = true },
				desc = "Jump down",
			},
			{
				"<leader>ju",
				function()
					hop.hint_lines_skip_whitespace({ direction = directions.BEFORE_CURSOR })
				end,
				{ remap = true },
				desc = "Jump up",
			},
		}
	end,
}

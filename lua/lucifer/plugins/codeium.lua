return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"plenary",
	},
	keys = function()
		local vt = require("codeium.virtual_text")
		return {
			{
				"<C-i>",
				function()
					local completion_item = vt.get_current_completion_item()
					if completion_item == nil then
						vim.notify("complete")
						vt.complete()
					else
						vim.notify("clear")
						vt.clear()
					end
				end,
				mode = "i",
			},
		}
	end,
	config = function()
		local opts = {
			enable_chat = false,
			enable_cmp_source = false,
			enable_local_search = false,
			enable_index_service = false,
			virtual_text = {
				enabled = true,
				manual = true,
				map_keys = true,
				key_bindings = {
					accept = "<C-y>",
				},
			},
		}
		require("codeium").setup(opts)
		---@diagnostic disable-next-line: duplicate-set-field
		require("codeium.util").get_newline = function()
			return "\n"
		end
	end,
}

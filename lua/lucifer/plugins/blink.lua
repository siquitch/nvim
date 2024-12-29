return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = "rafamadriz/friendly-snippets",
	version = "0.8.2",
	opts = {
		keymap = { ["<Down>"] = { "select_next", "fallback" }, ["<Up>"] = { "select_prev", "fallback" } },

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			cmdline = {},
		},
	},
	opts_extend = { "sources.default" },
}

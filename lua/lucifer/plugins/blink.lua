return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "v0.10.0",
	opts = {
		keymap = {
			["<Down>"] = { "select_next", "fallback" },
			["<Up>"] = { "select_prev", "fallback" },
			["<C-k>"] = { "show", "show_documentation", "hide_documentation" },
		},
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			cmdline = {},
		},
		signature = { enabled = true },
		completion = {
			trigger = { prefetch_on_insert = true },
			list = { max_items = 75 },
			menu = {
				scrollbar = false,
			},
		},
	},
	opts_extend = { "sources.default" },
}

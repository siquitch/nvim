return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "v0.13.1",
	opts = {
		keymap = {
			preset = "none",
			["<Down>"] = { "select_next", "fallback" },
			["<Up>"] = { "select_prev", "fallback" },
			["<C-k>"] = { "show_documentation", "hide_documentation" },
			["<C-j>"] = { "show", "hide" },
			["<C-y>"] = { "accept", "fallback" },
		},
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer", "lazydev" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
			},
		},
		signature = { enabled = true },
		completion = {
			trigger = { prefetch_on_insert = true },
			list = { max_items = 20 },
			menu = {
				scrollbar = false,
			},
		},
        fuzzy = {implementation = "prefer_rust"}
	},
	opts_extend = { "sources.default" },
}

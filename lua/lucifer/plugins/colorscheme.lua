return {
	{
		"catppuccin/nvim",
		name = "cat",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato",
				term_colors = true,
				no_italic = false,
				integrations = {
					harpoon = true,
				},
				color_overrides = {
					macchiato = {
						-- Background and Core Colors
						base = "#1b1f2a", -- Twilight blue (base)
						mantle = "#151921", -- Deep night sky (darker background)
						crust = "#10131a", -- Midnight black (outer elements)

						-- Text and Overlay Colors
						text = "#c5cdd9", -- Soft moonlight (primary text)
						subtext1 = "#abb3c1", -- Faded moonlight (secondary text)
						subtext0 = "#9199a7", -- Dimmed moonlight (tertiary text)
						overlay2 = "#6f7787", -- Night mist (lighter overlay)
						overlay1 = "#5a6273", -- Evening shadow (medium overlay)
						overlay0 = "#454c5f", -- Dusk shadow (darker overlay)

						-- Surface Colors
						surface2 = "#2a2f3e", -- Twilight haze (lighter surface)
						surface1 = "#232738", -- Deep twilight (medium surface)
						surface0 = "#1d2130", -- Nightfall (darker surface)

						-- Accent Colors
						rosewater = "#f4d7da", -- Pale rose (light pink)
						flamingo = "#f1c2c3", -- Soft flamingo (muted pink)
						pink = "#f0a8c0", -- Twilight pink (light pink)
						mauve = "#bb99ff", -- Twilight mauve (soft purple)
						red = "#ff6b82", -- Crimson twilight (soft red)
						maroon = "#e0678e", -- Dusky maroon (muted maroon)
						peach = "#ffb388", -- Peach dusk (soft peach)
						yellow = "#ffe28e", -- Moonlit amber (light yellow)
						green = "#8bd6a6", -- Aurora green (soft green)
						teal = "#6fd1c6", -- Twilight teal (soft teal)
						sky = "#78dcec", -- Evening sky (light sky blue)
						sapphire = "#6699cc", -- Dusk sapphire (muted blue)
						blue = "#7caaff", -- Twilight blue (light blue)
						lavender = "#a6c8ff", -- Evening lavender (soft lavender)
					},
				},
			})
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}

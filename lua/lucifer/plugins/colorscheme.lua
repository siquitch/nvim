return {
    {
        'catppuccin/nvim',
        name = 'cat',
        priority = 1000,
        config = function()
            require('catppuccin').setup {
                flavour = 'macchiato',
                term_colors = true,
                no_italic = false,
                integrations = {
                    harpoon = true,
                },
            }
            vim.cmd([[colorscheme catppuccin]])
        end
    }
}

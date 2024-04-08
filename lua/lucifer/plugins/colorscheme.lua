return {
    {
        'catppuccin/nvim',
        dependencies = { 'harpoon', 'dashboard' },
        name = 'cat',
        priority = 1000,
        config = function()
            require('catppuccin').setup {
                flavour = 'mocha',
                no_italic = false,
                integrations = {
                    harpoon = true,
                },
            }
            vim.cmd([[colorscheme catppuccin]])
        end
    }
    -- {
    --     'folke/tokyonight.nvim',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         require('tokyonight').setup {
    --             style = 'moon',
    --             styles = {
    --                 comments = { italic = false },
    --                 keywords = { italic = false }
    --             }
    --         }
    --         vim.cmd([[colorscheme tokyonight]])
    --     end
    -- }
}

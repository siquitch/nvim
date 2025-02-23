return {
    'folke/trouble.nvim',
    dependencies = { 'icons' },
    name = 'trouble',
    keys = {
        {
            '<leader>tw',
            '<cmd>Trouble diagnostics toggle<cr>',
            desc = 'Trouble toggle workspace'
        },
        {
            '<leader>tr',
            '<cmd>TroubleRefresh<cr>',
            desc = 'Trouble refresh'
        },
    },
    opts = {
        win = {
            position = "right",
            size = {
                width = 50
            }
        }
    },
}

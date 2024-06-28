return {
    'folke/trouble.nvim',
    dependencies = { 'icons' },
    name = 'trouble',
    keys = {
        {
            '<leader>td',
            '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
            desc = 'Trouble toggle'
        },
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
        {
            '<leader>tn',
            function()
                require('trouble').next({})
            end,
            desc = 'Trouble next'
        },
    },
    opts = {},
}

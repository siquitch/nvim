return {
    'folke/trouble.nvim',
    dependencies = { 'icons' },
    keys = {
        {
            '<leader>tw',
            '<cmd>TroubleToggle workspace_diagnostics<cr>',
            desc = 'Trouble workspace'
        },
        {
            '<leader>td',
            '<cmd>TroubleToggle document_diagnostics<cr>',
            desc = 'Trouble document'
        },
        {
            '<leader>tq',
            '<cmd>TroubleToggle quickfix<cr>',
            desc = 'Trouble quickfix'
        },
        {
            '<leader>tr',
            '<cmd>TroubleRefresh<cr>',
            desc = 'Trouble refresh'
        },
        {
            '<leader>tn',
            function ()
                require('trouble').next({skip_groups = true, jump = true})
            end,
            desc = 'Trouble next'
        },
        {
            '<leader>tp',
            function ()
                require('trouble').previous({skip_groups = true, jump = true})
            end,
            desc = 'Trouble previous'
        },
    }
}

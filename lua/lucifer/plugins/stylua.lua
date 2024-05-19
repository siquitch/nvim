return {
    'wesleimp/stylua.nvim',
    keys = {
        {
            '<leader>lf',
            function ()
                require('stylua').format()
            end,
            desc = 'Stylua format',
        },
    },
}

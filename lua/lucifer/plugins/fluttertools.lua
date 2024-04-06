return {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'plenary',
        'dressing',
    },
    config = function()
        require('flutter-tools').setup()
    end,
    keys = {
        {
            '<leader>rr',
            '<cmd>FlutterRun<cr>',
            desc = 'Flutter run'
        },
        {
            '<leader>rd',
            '<cmd>FlutterDevices<cr>',
            desc = 'Flutter devices'
        },
        {
            '<leader>re',
            '<cmd>FlutterEmulators<cr>',
            desc = 'Flutter emulators'
        },
        {
            '<leader>ro',
            '<cmd>FlutterOutlineToggle<cr>',
            desc = 'Flutter toggle outline'
        },
        {
            '<leader>rl',
            '<cmd>FlutterReanalyze<cr>',
            desc = 'Flutter reload lsp'
        },
    }
}

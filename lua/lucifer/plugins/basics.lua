return {
    {
        'nvim-lua/plenary.nvim',
        name = 'plenary'
    },
    { 'folke/which-key.nvim' },
    {
        'folke/neoconf.nvim',
        cmd = 'Neoconf'
    },
    'folke/neodev.nvim',
    {
        'nvim-tree/nvim-web-devicons',
        name = 'icons',
    },
    {
        'folke/trouble.nvim',
        dependencies = { 'icons' },
    },
    {
        'stevearc/dressing.nvim',
        name = 'dressing',
        opts = {},
    },
    'tpope/vim-fugitive',
}

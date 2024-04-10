return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    name = 'dashboard',
    config = function()
        require('dashboard').setup({
            config = {
                week_header = {
                    enable = true,
                },
                project = { enable = false },
                shortcut = {
                    {
                        desc = '󰊳 Update',
                        group = '@property',
                        action = 'Lazy update',
                        key = 'u'
                    },
                    {
                        icon = ' ',
                        icon_hl = '@variable',
                        desc = 'Files',
                        group = 'Label',
                        action = 'Telescope find_files',
                        key = 'f',
                    },
                },
                footer = {},
            },
        })
    end,
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    }
}

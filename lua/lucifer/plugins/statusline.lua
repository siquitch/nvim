return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        opts = true
    },
    config = function()
        require('lualine').setup {
            sections = {
                lualine_x = { 'flutter_tools_decorations.device', 'filetype' },
                lualine_y = { 'searchcount' },
            }
        }
    end
}

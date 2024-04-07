return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        require('nvim-tree').setup{
            filters = {
                enable = false,
            }
        }
    end,
    keys = {
        {
            '<leader>wp',
            '<cmd>NvimTreeToggle<cr>',
            desc = 'Toggle tree'
        }
    }
}

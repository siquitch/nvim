return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        require('nvim-tree').setup()
    end,
    keys = {
        {
            '<leader>wp',
            '<cmd>NvimTreeToggle<cr>',
            desc = 'Toggle tree'
        }
    }
}

return {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    config = function()
        require('gitsigns').setup({
            current_line_blame_opts = {
                delay = 0,
            }
        })
    end,
    keys = {
        {
            '<leader>gh',
            '<cmd>Gitsigns preview_hunk<cr>',
            desc = 'Preview hunk',
        },
        {
            '<leader>gb',
            '<cmd>Gitsigns toggle_current_line_blame<cr>',
            desc = 'Toggle line blame',
        },
    }
}

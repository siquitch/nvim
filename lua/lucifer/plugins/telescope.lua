return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'plenary' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files,
                { desc = 'find files' })
            vim.keymap.set('n', '<leader>fc', builtin.git_files,
                { desc = 'git files' })
        end,
    },
}

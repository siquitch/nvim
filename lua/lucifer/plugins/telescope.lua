return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'plenary' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files,
                { desc = 'Find files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep,
                { desc = 'Live grep' })
            vim.keymap.set('n', '<leader>fc', builtin.git_files,
                { desc = 'Git files' })
            vim.keymap.set('n', '<leader>fh', builtin.search_history,
                { desc = 'Find history' })
            vim.keymap.set('n', '<leader>fd', builtin.diagnostics,
                { desc = 'Search diagnostics' })
            vim.keymap.set('n', '<leader>f/', builtin.current_buffer_fuzzy_find,
                { desc = 'Search current file' })
        end,
    },
}

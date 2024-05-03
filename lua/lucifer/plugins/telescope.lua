return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            { 'plenary' },
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            require('telescope').setup {
                defaults = {
                    layout_strategy = 'vertical',
                },
            }
            require('telescope').load_extension('fzf')
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files,
                { desc = 'Find files' })
            vim.keymap.set('n', '<leader>f.',
                function()
                    builtin.find_files({ hidden = true })
                end,
                { desc = 'Find files hidden included' })
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
            vim.keymap.set('n', '<leader>fq', builtin.quickfix,
                { desc = 'List quickfix' })
            vim.keymap.set('n', '<leader>fr', builtin.lsp_references,
                { desc = 'Find references' })
            vim.keymap.set('n', '<leader>fb', builtin.git_branches,
                { desc = 'Git branches' })
        end,
    },
}

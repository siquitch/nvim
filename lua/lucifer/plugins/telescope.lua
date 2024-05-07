return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            { 'plenary' },
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
            { 'debugloop/telescope-undo.nvim' },
        },
        config = function()
            require('telescope').setup {
                defaults = {
                    layout_strategy = 'center',
                    layout_config = {
                        center = {
                            prompt_position = 'bottom',
                            preview_cutoff = 20,
                        }
                    }
                },
            }
            require('telescope').load_extension('fzf')
            require('telescope').load_extension('flutter')
            require('telescope').load_extension('undo')
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.fd,
                { desc = 'Find files' })
            vim.keymap.set('n', '<leader>f.',
                function()
                    builtin.fd({ hidden = true })
                end,
                { desc = 'Find files hidden included' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep,
                { desc = 'Live grep' })
            vim.keymap.set('n', '<leader>gf', builtin.search_history,
                { desc = 'Find history' })
            vim.keymap.set('n', '<leader>fd', builtin.diagnostics,
                { desc = 'Search diagnostics' })
            vim.keymap.set('n', '<leader>f/', builtin.current_buffer_fuzzy_find,
                { desc = 'Search current file' })
            vim.keymap.set('n', '<leader>fq', builtin.quickfix,
                { desc = 'List quickfix' })
            vim.keymap.set('n', '<leader>fr', builtin.lsp_references,
                { desc = 'Find references' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags,
                { desc = 'Help' })

            -- Undo
            vim.keymap.set('n', '<leader>fu', '<cmd>Telescope undo<cr>',
                { desc = 'Undo history' })

            -- Flutter
            vim.keymap.set('n', '<leader>rc',
                require('telescope').extensions.flutter.commands,
                { desc = 'Flutter commands' })

            -- Git stuff
            vim.keymap.set('n', '<leader>gf', builtin.git_files,
                { desc = 'Git files' })
            vim.keymap.set('n', '<leader>gc', builtin.git_commits,
                { desc = 'Git commits' })
            vim.keymap.set('n', '<leader>gg', builtin.git_branches,
                { desc = 'Git branches' })
            vim.keymap.set('n', '<leader>gs', builtin.git_status,
                { desc = 'Git status' })
        end,
    },
}

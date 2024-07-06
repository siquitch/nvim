return {
    'smoka7/hop.nvim',
    version = "v2",
    config = function()
        require('hop').setup {
            keys = 'etovxqpdygfblzhckisuran'
        }
        local hop = require('hop')
        local directions = require('hop.hint').HintDirection
        vim.keymap.set('', '<leader>jf', function()
            hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
        end, { remap = true })
        vim.keymap.set('', '<leader>jF', function()
            hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
        end, { remap = true })
        vim.keymap.set('', '<leader>jt', function()
            hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
        end, { remap = true })
        vim.keymap.set('', '<leader>jT', function()
            hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
        end, { remap = true })
        vim.keymap.set('', '<leader>jw', function()
            hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = true, })
        end, { remap = true })
        vim.keymap.set('', '<leader>jb', function()
            hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = true, })
        end, { remap = true })
        vim.keymap.set('', '<leader>jd', function()
            hop.hint_lines_skip_whitespace({ direction = directions.AFTER_CURSOR, })
        end, { remap = true })
        vim.keymap.set('', '<leader>ju', function()
            hop.hint_lines_skip_whitespace({ direction = directions.BEFORE_CURSOR, })
        end, { remap = true })
    end
}

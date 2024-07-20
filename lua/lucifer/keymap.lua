vim.g.mapleader = ' '

local map = vim.keymap

map.set('n', 'G', 'Gzz')

-- Move things while highlighted
map.set('v', 'J', ":m '>+1<CR>gv=gv")
map.set('v', 'K', ":m '>-2<CR>gv=gv")

map.set('n', 'J', 'mzJ`z')

-- Navigate up/down and center
map.set('n', '<C-u>', '<C-u>zz')
map.set('n', '<C-d>', '<C-d>zz')
map.set('n', 'n', 'nzzzv')
map.set('n', 'N', 'Nzzzv')

-- system clipboard
map.set('n', '<leader>y', "\"+y")
map.set('v', '<leader>y', "\"+y")
map.set('n', '<leader>Y', "\"+Y")

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        map.set('n', 'gD', vim.lsp.buf.declaration, opts)
        map.set('n', 'gd', vim.lsp.buf.definition, opts)
        map.set('n', 'K', vim.lsp.buf.hover, opts)
        map.set('n', 'gi', vim.lsp.buf.implementation, opts)
        map.set('n', '<C-g>', vim.lsp.buf.signature_help, opts)
        map.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        map.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        map.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        map.set('n', 'gr', vim.lsp.buf.references, opts)
        map.set('n', '<space>fm', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})

-- Useful to hightlight yanked regions
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 100 }
  end,
})

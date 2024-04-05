vim.g.mapleader = ' '

local map = vim.keymap

map.set('n', '<leader>wp', vim.cmd.Ex, { desc = "Go to dir" })

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

-- lsp stuff
map.set('n', '<space>e', vim.diagnostic.open_float)
map.set('n', '<space>q', vim.diagnostic.setloclist)

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
        map.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        map.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        map.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        map.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        map.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        map.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        map.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        map.set('n', 'gr', vim.lsp.buf.references, opts)
        map.set('n', '<space>fm', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})

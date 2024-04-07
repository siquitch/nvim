return {
    'neovim/nvim-lspconfig',

    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
    },

    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = { 'lua_ls', },
            handlers = {
                function(server)
                    require('lspconfig')[server].setup {}
                end,
                ['lua_ls'] = function()
                    local lsp = require('lspconfig')
                    lsp.lua_ls.setup {
                        settings = {
                            diagnostics = {
                                globals = { 'vim' }
                            }
                        }
                    }
                end
            }
        })
    end,

}

return {
    'neovim/nvim-lspconfig',

    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
    },

    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = { 'lua_ls' },
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
        local cmp = require('cmp')

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            window = {
                -- completion = cmp.config.window.bordered(),
                -- documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'buffer' },
            })
        })
        vim.diagnostic.config({
            update_in_insert = true,
            virtual_text = true,
        })
    end,

}

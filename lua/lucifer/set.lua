-- For nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- To execute project .nvim files
vim.o.exrc = true

vim.wo.rnu = true
vim.wo.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.guicursor = "n-v-i-c:block-Cursor"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.diagnostic.config({ virtual_text = true })

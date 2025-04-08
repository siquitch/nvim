vim.g.mapleader = " "

local map = vim.keymap

map.set("n", "G", "Gzz")

-- Move things while highlighted
map.set("v", "J", ":m '>+1<CR>gv=gv")
map.set("v", "K", ":m '>-2<CR>gv=gv")

map.set("n", "J", "mzJ`z")

-- Navigate up/down and center
map.set("n", "<C-u>", "<C-u>zz")
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "n", "nzzzv")
map.set("n", "N", "Nzzzv")

-- System clipboard
map.set("n", "<leader>y", '"+y')
map.set("v", "<leader>y", '"+y')
map.set("n", "<leader>Y", '"+Y')

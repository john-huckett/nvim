vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]

vim.opt.termguicolors = true
vim.cmd [[ colorscheme gruvbox ]]

-- set comments to italic
vim.cmd [[ highlight Comment cterm=italic gui=italic ]]

--set background to none
vim.cmd [[ highlight normal guibg=none ]]

-- line numbers
vim.cmd[[set number relativenumber]]

--set system clipboard as defualt
vim.cmd[[set clipboard=unnamedplus]]

--hide mode status
vim.cmd[[set noshowmode]]


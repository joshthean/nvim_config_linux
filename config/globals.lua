vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt
--tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

--search
opt.incsearch = true
opt.smartcase = true
opt.hlsearch = true

--Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = '80'
opt.signcolumn = 'yes'
opt.cmdheight = 1
opt.scrolloff = 10

--Behavior
opt.hidden = true
opt.clipboard:append('unnamedplus')

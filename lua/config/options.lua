vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Indent
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.shiftround = true -- When shifting lines, round the indentation to the nearest multiple of "shiftwidth."
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Editor
vim.opt.wrap = false
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = v
vim.opt.clipboard = 'unnamedplus'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.scrolloff = 10
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Miscs
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.spell = true
vim.opt.updatetime = 250

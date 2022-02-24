
-- leader key
vim.api.nvim_set_keymap('n','<Space>','',{})

vim.g.mapleader = ' '



require('keymapping')

require('plugins')

require('lsp')


-- 语法高亮
vim.o.syntax = "on"

-- 开启行号和相对行号
vim.o.number = true
vim.o.relativenumber = true

-- tab设置
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true

-- 缩进
vim.o.smartindent = true

-- 颜色设置
vim.o.termguicolors = true


-- 背景及主题
vim.o.background = 'dark'
vim.cmd 'colorscheme molokai'

-- 透明背景
-- vim.cmd 'autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE'

-- 输入法
vim.api.nvim_command('autocmd InsertLeave * :silent !fcitx5-remote -c')
vim.api.nvim_command('autocmd BufCreate *  :silent !fcitx5-remote -c')
vim.api.nvim_command('autocmd BufEnter *  :silent !fcitx5-remote -c')
vim.api.nvim_command('autocmd BufLeave *  :silent !fcitx5-remote -c')




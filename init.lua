

-- speed up when start up
require('impatient')

-- leader key
vim.api.nvim_set_keymap('n','<Space>','',{})

vim.g.mapleader = ' '



require('keymapping')

require('plugins')

-- require('lsp')



-- encoding setting
vim.o.encoding = "utf-8"

-- lines above and under the current line
vim.o.scrolloff = 10

-- share the clipboard of system
-- vim.o.clipboard = "unnamedplus"

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
vim.o.autoindent = true
-- vim.o.smartindent = true

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

-- lazygit config
vim.g.lazygit_floating_window_winblend = 0  -- transparency of floating window
vim.g.lazygit_floating_window_scaling_factor = 0.9    --  scaling factor for floating window
vim.g.lazygit_floating_window_use_plenary =  "['╭', '╮', '╰', '╯']"  -- customize lazygit popup window corner characters
vim.g.lazygit_floating_window_use_plenary = 0  -- use plenary.nvim to manage floating window if available
vim.g.lazygit_use_neovim_remote = 1  -- fallback to 0 if neovim-remote is not installed


-- mouse setting
vim.o.mouse = 'a'

-- set the timeout length
vim.o.tm = 50






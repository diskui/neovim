local opts = { noremap = true, silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("n","j","gj",opts)
keymap("n","k","gk",opts)

keymap("n","<tab>",":tabn<cr>",opts)
keymap("n","<S-tab>",":tabp<cr>",opts)

keymap("t","<Esc>","<C-\\><C-n>",opts)


-- 输入法
vim.api.nvim_command('autocmd InsertLeave * :silent !fcitx5-remote -c')
vim.api.nvim_command('autocmd BufCreate *  :silent !fcitx5-remote -c')
vim.api.nvim_command('autocmd BufEnter *  :silent !fcitx5-remote -c')
vim.api.nvim_command('autocmd BufLeave *  :silent !fcitx5-remote -c')


require("user.compile-run")


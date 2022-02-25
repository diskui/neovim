-- 折行内移动
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })


-- 标签页切换
vim.api.nvim_set_keymap('n', '<tab>', ':tabn<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-tab>', ':tabp<cr>', { noremap = true, silent = true })

-- buffer切换
vim.api.nvim_set_keymap('n','<leader>nb',':bn<cr>',{noremap = true,silent = true})
vim.api.nvim_set_keymap('n','<leader>np',':bp<cr>',{noremap = true,silent = true})


-- 格式化代码
vim.api.nvim_set_keymap('n', 'fm', ':lua vim.lsp.buf.formatting()<cr>', { noremap = true, silent = true })

-- 打开markdown预览
vim.api.nvim_set_keymap('n', '<C-m>', ':MarkdownPreview<cr>', { noremap = true, silent = true })


-- 错误显示与跳转
vim.cmd('nnoremap <silent><leader>e <cmd>lua require\'lspsaga.diagnostic\'.show_line_diagnostics()<CR>')

vim.cmd('nnoremap <silent><leader>ne :Lspsaga diagnostic_jump_next<CR>')
vim.cmd('nnoremap <silent><leader>pe :Lspsaga diagnostic_jump_prev<CR>')

-- fuzzy finder

vim.api.nvim_set_keymap('n','<leader>ff','<cmd>lua require(\'telescope.builtin\').find_files()<cr>',{noremap = true,silent = true})
vim.api.nvim_set_keymap('n','<leader>fg','<cmd>lua require(\'telescope.builtin\').live_grep()<cr>',{noremap = true,silent = true})
vim.api.nvim_set_keymap('n','<leader>fbf','<cmd>lua require(\'telescope.builtin\').buffers()<cr>',{noremap = true,silent = true})
vim.api.nvim_set_keymap('n','<leader>fh','<cmd>lua require(\'telescope.builtin\').help_tags()<cr>',{noremap = true,silent = true})
vim.api.nvim_set_keymap('n','<leader>fb','<cmd>lua require(\'telescope.builtin\').current_buffer_fuzzy_find()<cr>',{noremap = true,silent = true})

-- open lazy git
vim.api.nvim_set_keymap('n','<leader>lg',':LazyGit<cr>',{noremap = true, silent = true})

-- esc to exit insert mode in terminal mode
vim.api.nvim_set_keymap('t','<Esc>','<C-\\><C-n>',{noremap = true, silent = true})

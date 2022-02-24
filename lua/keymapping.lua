-- 折行内移动
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })


-- 标签页切换
vim.api.nvim_set_keymap('n', '<tab>', ':tabn<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-tab>', ':tabp<cr>', { noremap = true, silent = true })


-- 格式化代码
vim.api.nvim_set_keymap('n', 'ff', ':lua vim.lsp.buf.formatting()<cr>', { noremap = true, silent = true })

-- 打开markdown预览
vim.api.nvim_set_keymap('n', '<C-m>', ':MarkdownPreview<cr>', { noremap = true, silent = true })


-- 错误显示与跳转
vim.cmd('nnoremap <silent><leader>e <cmd>lua require\'lspsaga.diagnostic\'.show_line_diagnostics()<CR>')

vim.cmd('nnoremap <silent><leader>ne :Lspsaga diagnostic_jump_next<CR>')
vim.cmd('nnoremap <silent><leader>pe :Lspsaga diagnostic_jump_prev<CR>')




return ({
    cmd = { "quick-lint-js", "--lsp-server" },
    filetypes = { "javascript" },
    root_dir = function() return vim.loop.cwd() end,
    single_file_support = true

})

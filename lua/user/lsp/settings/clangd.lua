

return ({
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = function() return vim.loop.cwd() end,
    single_file_support = true
})

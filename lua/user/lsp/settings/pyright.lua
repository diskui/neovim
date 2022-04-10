

return ({
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_dir = function() return vim.loop.cwd() end,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    },
    single_file_support = true


})

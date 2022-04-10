
return ({
    cmd = { "vscode-css-language-server", "--stdio" },
    filetypes = { "css", "scss", "less" },
    root_dir = function() return vim.loop.cwd() end,
    settings = {
        css = {
            validate = true
        },
        less = {
            validate = true
        },
        scss = {
            validate = true
        }
    },
    single_file_support = true

})

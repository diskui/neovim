local status_ok, monokai = pcall(require, "monokai")
if not status_ok then
  return
end

local palette = monokai.pro

monokai.setup {
    palette = {
        diff_text = '#133337',
    },
    custom_hlgroups = {
        TSInclude = {
            fg = palette.aqua,
        },
        GitSignsAdd = {
            fg = palette.green,
            bg = palette.base2
        },
        GitSignsDelete = {
            fg = palette.pink,
            bg = palette.base2
        },
        GitSignsChange = {
            fg = palette.orange,
            bg = palette.base2
        },
    }
}


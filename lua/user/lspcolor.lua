

local status_ok, lspcolor = pcall(require, "lsp-colors")
if not status_ok then
  return
end


lspcolor.setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"

})

-- ~/.config/nvim/lua/user/autocmds.lua or ~/.config/nvim/init.lua

-- Apply custom highlights directly
vim.api.nvim_set_hl(0, "LineNr", { fg = "#6E6F6F" })
-- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#BEBFBF", bold = true })
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#252525" })

-- Force redraw
vim.cmd "redraw"

-- In your AstroNvim configuration, probably within `highlights.lua` or similar
vim.cmd [[
  highlight Visual guibg=#555555 guifg=#FFFFFF
]]

-- In your AstroNvim configuration, within `highlights.lua` or directly in `init.lua`
vim.cmd [[
  highlight link @text.warning Comment
  highlight DiagnosticUnnecessary guifg=#888888 gui=italic
]]

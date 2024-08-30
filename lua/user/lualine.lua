-- ~/.config/nvim/lua/user/lualine.lua

-- Disable Heirline statusline
vim.g.statusline = nil

-- Define your custom theme
local custom_theme = {
  normal = {
    a = { bg = "#333333", fg = "#ffffff", gui = "bold" },
    b = { bg = "#333333", fg = "#ffffff" },
    c = { bg = "NONE", fg = "#ffffff" },
  },
  insert = {
    a = { bg = "#333333", fg = "#00ff00", gui = "bold" },
    b = { bg = "#333333", fg = "#00ff00" },
    c = { bg = "NONE", fg = "#00ff00" },
  },
  visual = {
    a = { bg = "#333333", fg = "#ff00ff", gui = "bold" },
    b = { bg = "#333333", fg = "#ff00ff" },
    c = { bg = "NONE", fg = "#ff00ff" },
  },
  replace = {
    a = { bg = "NONE", fg = "#ff0000", gui = "bold" },
    b = { bg = "NONE", fg = "#ff0000" },
    c = { bg = "NONE", fg = "#ff0000" },
  },
  command = {
    a = { bg = "#333333", fg = "#ffffff", gui = "bold" },
    b = { bg = "#333333", fg = "#ffffff" },
    c = { bg = "NONE", fg = "#ffffff" },
  },
  inactive = {
    a = { bg = "NONE", fg = "#ffffff" },
    b = { bg = "NONE", fg = "#ffffff" },
    c = { bg = "NONE", fg = "#ffffff" },
  },
}

-- Configure lualine
require("lualine").setup {
  options = {
    theme = custom_theme,
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filename" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}

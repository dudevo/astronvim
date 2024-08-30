require("noice").setup {
  cmdline = {
    enabled = true, -- enables the cmdline UI
    view = "cmdline", -- view to use for the cmdline (cmdline_popup for a popup)
    format = {
      cmdline = { pattern = "^:", icon = "", lang = "vim" },
      search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
      search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
      filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
      lua = { pattern = "^:%s*lua%s+", icon = "", lang = "lua" },
    },
  },
  popupmenu = {
    enabled = true, -- enables the popupmenu UI
    backend = "nui", -- backend to use to display the popupmenu
  },
  lsp = {
    hover = {
      enabled = false, -- Disable the hover handler in noice.nvim
    },
    signature = {
      enabled = false, -- Disable the signature help handler in noice.nvim
    },
  },
}

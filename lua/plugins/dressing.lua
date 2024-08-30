return {
  -- other plugins
  {
    "stevearc/dressing.nvim",
    config = function()
      require("dressing").setup {
        input = {
          enabled = true,
          border = "rounded",
          relative = "editor",
        },
        select = {
          enabled = true,
          backend = { "nui", "builtin" },
        },
      }
    end,
  },
  {
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require("noice").setup {
        -- your Noice configuration here
      }
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = true,
  },
}

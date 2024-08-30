return {
{
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        style = "night", -- Options: storm, night, day
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in neovim
        styles = {
          comments = { italic = true },
          keywords = { italic = false },
          functions = {},
          variables = {},
          -- Add any other highlights or styles you prefer
        },
        sidebars = { "qf", "help", "nvim-tree" }, -- Set specific sidebar colors
        on_colors = function(colors)
          -- Modify the colors for specific elements
          colors.border = colors.blue -- Example customization
        end,
        on_highlights = function(highlights, colors)
          -- Modify highlights for specific UI elements
          highlights.NvimTreeFolderIcon = { fg = colors.blue, bg = colors.none }
        end,
      })
      -- Load the colorscheme
      vim.cmd("colorscheme tokyonight")
    end
  },
}

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  dependencies = {
    "ThePrimeagen/harpoon",
    "nvim-lua/plenary.nvim",
    "joshmedeski/telescope-smart-goto.nvim",
    "debugloop/telescope-undo.nvim",
  },
  config = function()
    require("telescope").setup {
      defaults = {
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        file_ignore_patterns = { "node_modules", "%.git/" },
        path_display = { "smart" },
      },
    }
  end,
}

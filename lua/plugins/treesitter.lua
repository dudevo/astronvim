return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "typescript",
      "html",
      "javascript",
      "css",
      "scss",
      "json",
      "tsx",
      "angular",
    },
    highlight = { enable = true },
  },
}

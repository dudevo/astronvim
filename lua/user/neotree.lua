-- ~/.config/nvim/lua/user/neotree.lua

require("neo-tree").setup {
  -- Keep the default behavior by not altering other settings
  enable_git_status = false, -- Disable git status icons
  window = {
    width = 60, -- Set the width of the Neo-tree window
    mappings = { -- Use the default mappings
      ["<space>"] = "toggle_node",
      ["<cr>"] = "open",
      ["l"] = "open",
      ["h"] = "close_node",
      ["v"] = "open_vsplit",
      ["s"] = "open_split",
      ["C"] = "close_all_nodes",
      ["R"] = "refresh",
      ["a"] = "add",
      ["d"] = "delete",
      ["r"] = "rename",
      ["y"] = "copy_to_clipboard",
      ["x"] = "cut_to_clipboard",
      ["p"] = "paste_from_clipboard",
      ["c"] = "copy", -- retains default behavior
      ["m"] = "move", -- retains default behavior
      ["q"] = "close_window",
      ["?"] = "show_help",
    },
  },
  filesystem = {
    follow_current_file = {
      enabled = true, -- This is the new correct format
    },
    use_libuv_file_watcher = true, -- Automatically refresh the file tree when changes occur
    filtered_items = {
      hide_dotfiles = false, -- Show dotfiles
      hide_gitignored = false, -- Show gitignored files
    },
  },
  default_component_configs = {
    git_status = {
      symbols = {
        added = "",
        modified = "",
        deleted = "",
        renamed = "",
        untracked = "",
        ignored = "",
        unstaged = "",
        staged = "",
        conflict = "",
      },
    },
  },
}

vim.cmd [[colorscheme tokyonight]]
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#fcba03" }) -- Change this to your preferred color
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })

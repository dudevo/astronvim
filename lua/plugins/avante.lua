return {
  -- 1) The main Avante plugin
  {
    "yetone/avante.nvim",
    -- This step is required by Avante to build the underlying library
    build = "make",

    -- AstroNvim (lazy.nvim) option that ensures it loads on startup
    lazy = false,

    -- List Avante's dependencies here
    dependencies = {
      -- Required dependencies
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",

      -- Optional but recommended dependencies
      "stevearc/dressing.nvim",
      "hrsh7th/nvim-cmp", -- for Avante commands/mentions autocompletion
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua", -- if you want Copilot integration
      {
        "HakonHarnes/img-clip.nvim",
        config = function()
          -- Example recommended config for img-clip
          require("img-clip").setup {
            default = {
              embed_image_as_base64 = false,
              prompt_for_file_name = false,
              drag_and_drop = {
                insert_mode = true,
              },
              use_absolute_path = true,
            },
          }
        end,
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "Avante" },
        config = function()
          require("render-markdown").setup {
            file_types = { "markdown", "Avante" },
          }
        end,
      },
    },

    -- The 'config' function is where we actually load and set up Avante.
    config = function()
      -- Try to load 'avante_lib' if it exists
      local ok, avante_lib = pcall(require, "avante_lib")
      if ok then
        avante_lib.load()
      else
        vim.notify("[Avante] Could not load avante_lib", vim.log.levels.ERROR)
      end

      -- Now configure Avante itself
      require("avante").setup {
        provider = "claude", -- The provider used in Aider mode or in the planning phase of Cursor Planning Mode
        -- auto_suggestions_provider = "claude",
        cursor_applying_provider = nil, -- The provider used in the applying phase of Cursor Planning Mode, defaults to nil, when nil uses Config.provider as the provider for the applying phase
        claude = {
          endpoint = "https://api.anthropic.com",
          model = "claude-3-7-sonnet-20250219",
          temperature = 0,
          max_tokens = 8192,
          disable_tools = true,
        },
        highlights = {
          diff = {
            current = nil,
            incoming = nil,
          },
        },
        -- Make sure your environment variable is set,
        -- or manually provide your key here (not recommended).
        api_key = vim.fn.getenv "AVANTI_API_KEY",

        -- Example setting to disable default keymaps
        disable_default_keymaps = true,

        -- ... other Avante-specific config ...
      }
    end,
  },
}

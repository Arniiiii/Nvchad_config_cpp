local overrides = require "configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "configs.null-ls"
        end,
      },
    },
    config = function()
      require "nvchad.configs.lspconfig"
      require "configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "Civitasv/cmake-tools.nvim",
    config = function()
      require "configs.cmake"
    end,
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "Freed-Wu/portage-language-server",
    lazy = false,
    config = function()
      vim.api.nvim_create_autocmd({ "BufEnter" }, {
        pattern = { "*.ebuild", "*.eclass", "make.conf", "color.map" },
        callback = function()
          vim.lsp.start {
            name = "portage",
            cmd = { "portage-language-server" },
          }
        end,
      })
    end,
  },
  {
    "drmikehenry/vim-headerguard",
    lazy = false,
    config = function()
      require "configs.vim-headerguard"
    end,
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require "configs.neogen"
    end,
    lazy = false,
  },
  {
    "gelguy/wilder.nvim",
    dependencies = {
      { "Gerodote/fzy-lua-native_updated_gitignore_repaired_makefile", build = "make", lazy = false },
      {
        "nixprime/cpsm",
        dependencies = { "ctrlpvim/ctrlp.vim", lazy = false },
        lazy = false,
        build = "bash ./install.sh",
      },
    },
    config = function()
      require "configs.wilder"
    end,
    keys = { "/", "?", ":" },
    build = function()
      vim.cmd [[
        let &rtp=&rtp
      ]]
      vim.api.nvim_command "runtime! plugin/rplugin.vim"
      vim.api.nvim_command ":UpdateRemotePlugins"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.nvim-dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require "configs.nvim-dap-ui"
    end,
    lazy = false,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp", -- Optional: For activating slash commands and variables in the chat buffer
      "nvim-telescope/telescope.nvim", -- Optional: For working with files with slash commands
      {
        "stevearc/dressing.nvim", -- Optional: Improves the default Neovim UI
        opts = {},
      },
    },
    config = function()
      require "configs.codecompanion"
    end,
    lazy = false,
    -- keys = { "<leader>a", "<C-a>", "ga" },
  },

  {
    "rcarriga/nvim-notify",
    config = function()
      require "configs.nvim-notify"
    end,
  },

  -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    config = function()
      require "configs.commentnvim"
    end,
    lazy = false,
  },

  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.3", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
  },

  -- { lua - utils.nvim },
  -- { nvim - nio },
  -- { nui.nvim },
  -- { plenary.nvim },
  -- { pathlib.nvim },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins

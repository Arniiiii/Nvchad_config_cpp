local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "cpp",
    "markdown",
    "markdown_inline",
    "yaml",
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  pkgs = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- cmake stuff
    "cmakelint",
    "cmakelang",
    "neocmakelsp",

    -- python stuff
    -- "python-lsp-server",
    "pyright",
    "yapf",

    -- yaml stuff
    "yamlfmt",
    "yamllint",
    "yaml-language-server",

    -- json stuff
    "json-lsp",
    "jsonlint",

    -- debugging
    "codelldb", -- c/c++/rust
    "debugpy",  -- python

    -- java
    "jdtls",
    "java-debug-adapter",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  filters = {
    git_ignored = false,
    dotfiles = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M

---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.CMake = {
  n = {
    ["<leader>G"] = { ":CMakeGenerate <CR>", "Configure and generate" },
    ["<leader>B"] = { ":CMakeBuild <CR>", "Build" },
    ["<leader>R"] = { ":CMakeRun <CR>", "Run" },
    ["<leader>K"] = { ":CMakeSelectKit <CR>", "Select kit" },
    ["<leader>S"] = { ":CMakeSettings <CR>", "Project settings" },
    ["<leader>ce"] = { ":CMakeCloseExecutor <CR>", "Close executor" },
    ["<leader>cr"] = { ":CMakeCloseRunner <CR>", "Close runner" },
    ["<leader>oe"] = { ":CMakeOpenExecutor <CR>", "Open executor" },
    ["<leader>or"] = { ":CMakeOpenRunner <CR>", "Open runner" },
    ["<leader>cs"] = { ":CMakeStop <CR>", "Stop current cmake process" },
    ["<leader>cc"] = { ":CMakeClean <CR>", "Clean" },
    ["<leader>qb"] = { ":CMakeQuickBuild <CR>", "Quick build" },
    ["<leader>qr"] = { ":CMakeQuickRun <CR>", "Quick run" },
    ["<leader>ci"] = { ":CMakeInstall <CR>", "Install" },
    ["<leader>cl"] = { ":CMakeLaunchArgs <CR>", "Launch args" },
    ["<leader>sp"] = { ":CMakeSelectBuildPreset <CR>", "Select build preset" },
    ["<leader>st"] = { ":CMakeSelectBuildTarget <CR>", "Select build target" },
    ["<leader>sT"] = { ":CMakeSelectBuildType <CR>", "Select build variant" },
    ["<leader>sc"] = { ":CMakeSelectConfigurePreset <CR>", "Select configure preset" },
    ["<leader>sl"] = { ":CMakeSelectLaunchTarget <CR>", "Select launch target" },
    ["<leader>tf"] = { ":CMakeShowTargetFiles <CR>", "Show target file" },
    ["<leader>ts"] = { ":CMakeTargetSettings <CR>", "Target settings" },
    ["<leader>sb"] = { ":CMakeSelectBuildDir <CR>", "Select build dir" },
    ["<leader>sw"] = { ":CMakeSelectCwd <CR>", "Select cwd" },
  },
}

M.lsp = {
  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>ra"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename using renamer",
    },
    ["<F2>"] = {
      function()
        vim.lsp.buf.rename()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
    ["<leader>4"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["<leader>f"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },

    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },
  },

  v = {
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

M.neogen = {
  n = {
    ["<leader>nf"] = {
      ":lua require('neogen').generate()<CR>",
      "Neogen generate smth",
    },
  },
}

-- more keybinds!

return M

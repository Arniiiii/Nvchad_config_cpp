require "nvchad.mappings"
---@type MappingsTable
local M = {}

M.general = {
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.tmux_navigator = {
  n = {
    ["<C-h>"] = { ":TmuxNavigateLeft<CR><ESC>", "Window left" },
    ["<C-l>"] = { ":TmuxNavigateRight<CR><ESC>", "Window right" },
    ["<C-j>"] = { ":TmuxNavigateDown<CR><ESC>", "Window down" },
    ["<C-k>"] = { ":TmuxNavigateUp<CR><ESC>", "Window up" },
    ["<C-b>"] = { ":TmuxNavigatePrevious<CR><ESC>", "Previous window" },
  }
}

M.dap = {
  n = {
    ["<leader>dr"] = {
      function() require("dap").restart() end, "Restart session"
    },
    ["<leader>rb"] = {
      function() require("dap").clear_breakboints() end, "Remove all breakpoints"
    },
    ["<leader>dt"] = {
      function() require("dap").terminate() end, "Terminate session"
    },
    ["<leader>tu"] = { -- sTack up
      function() require("dap").up() end, "Go up in current stacktrace without stepping"
    },
    ["<leader>td"] = { -- sTack down
      function() require("dap").down() end, "Go down in current stacktrace without stepping"
    },
    ["<leader>rc"] = {
      function() require("dap").reverse_continue() end, "Reverse continue. Debugger & debug adapter have to support it"
    },

    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "Continue",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<F11>"] = {
      function()
        require("dap").step_into()
      end,
      "Step into by statement",
    },
    -- seems to not work with codelldb ?
    -- ["<F9>"] = {
    --   function()
    --     require("dap").step_into({steppingGranularity = 'instruction'})
    --   end,
    --   "Step into by instruction",
    -- },
    ["<F12>"] = {
      function()
        require("dap").step_out()
      end,
      "Step out",
    },
    ["<leader>b"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
    },
    ["<leader>bb"] = {
      function()
        require("dap").set_breakpoint()
      end,
      "Set breakpoint",
    },
    ["<leader>lp"] = {
      function()
        require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
      end,
      "Set breakpoint with log point",
    },
    ["<leader>do"] = {
      function()
        require("dap").repl.open()
      end,
      "Repl open?",
    },
    ["<leader>dl"] = {
      function()
        require("dap").run_last()
      end,
      "Run last?",
    },
  },
}

M.dapui = {
  n = {
    ["<leader>do"] = {
      function()
        require("dapui").open()
      end,
      "open",
    },
    ["<leader>dc"] = {
      function()
        require("dapui").close()
      end,
      "close",
    },
    ["<leader>de"] = {
      function()
        require("dapui").eval()
      end,
      "Show hover windows with evaluating expression",
    },
    ["<leader>dh"] = {
      function()
        require("dap.ui.widgets").hover()
      end,
      "Dap ui hover ?",
    },
    ["<leader>dp"] = {
      function()
        require("dap.ui.widgets").preview()
      end,
      "Dap ui preview ?",
    },
    ["<leader>df"] = {
      function()
        local widgets = require "dap.ui.widgets"
        widgets.centered_float(widgets.frames)
      end,
      "Dap ui widgets frame float ?",
    },
    ["<leader>ds"] = {
      function()
        local widgets = require "dap.ui.widgets"
        widgets.centered_float(widgets.scopes)
      end,
      "Dap ui widgets scopes float ?",
    },
  },
  v = {
    ["<leader>dh"] = {
      function()
        require("dap.ui.widgets").hover()
      end,
      "Dap ui hover ?",
    },
    ["<leader>dp"] = {
      function()
        require("dap.ui.widgets").preview()
      end,
      "Dap ui preview ?",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>;"] = { ":Telescope commands<CR>", "Telescope commands" },
    ["<leader>tch"] = { ":Telescope command_history<CR>", "Telescope command history" },
  },
}

M.CMake = {
  n = {
    ["<leader>G"] = { ":CMakeGenerate <CR>", "Configure and generate" },
    ["<leader>B"] = { ":CMakeBuild <CR>", "Build" },
    ["<leader>R"] = { ":CMakeRun <CR>", "Run" },
    ["<leader>K"] = { ":CMakeSelectKit <CR>", "Select kit" },
    ["<leader>S"] = { ":CMakeSettings <CR>", "Project settings" },
    ["<leader>cd"] = { ":CMakeDebug <CR>", "Debug. Wanna add args?`:CMakeTargetSettings`" },
    ["<leader>ce"] = { ":CMakeCloseExecutor <CR>", "Close executor" },
    ["<leader>cr"] = { ":CMakeCloseRunner <CR>", "Close runner" },
    ["<leader>oe"] = { ":CMakeOpenExecutor <CR>", "Open executor" },
    ["<leader>or"] = { ":CMakeOpenRunner <CR>", "Open runner" },
    ["<leader>se"] = { ":CMakeStopExecutor <CR>", "Stop current cmake executor's process" },
    ["<leader>sr"] = { ":CMakeStopRunner <CR>", "Stop current cmake runner's process" },
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

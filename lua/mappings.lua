require "nvchad.mappings"

vim.keymap.set("v", ">", ">gv", { desc = "general indent" })

vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR><ESC>", { desc = "tmux_navigator Window left" })
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR><ESC>", { desc = "tmux_navigator Window right" })
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR><ESC>", { desc = "tmux_navigator Window down" })
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR><ESC>", { desc = "tmux_navigator Window left" })
vim.keymap.set("n", "<C-b>", ":TmuxNavigatePrevious<CR><ESC>", { desc = "tmux_navigator Window previous" })

vim.keymap.set("n", "<leader>dr", function()
  require("dap").restart()
end, { desc = "dap Restart session" })
vim.keymap.set("n", "<leader>rb", function()
  require("dap").clear_breakboints()
end, { desc = "dap Remove all breakpoints" })
vim.keymap.set("n", "<leader>dt", function()
  require("dap").terminate()
end, { desc = "dap Terminate session" })
vim.keymap.set("n", "<leader>tu", function()
  require("dap").up()
end, { desc = "dap Go up in current stacktrace without stepping" })
vim.keymap.set("n", "<leader>td", function()
  require("dap").down()
end, { desc = "dap Go down in current stacktrace without stepping" })
vim.keymap.set("n", "<leader>rc", function()
  require("dap").reverse_continue()
end, { desc = "dap Reverse continue. Debugger & debug adapter have to support it" })
vim.keymap.set("n", "<F5>", function()
  require("dap").continue()
end, { desc = "dap Continue" })
vim.keymap.set("n", "<F10>", function()
  require("dap").step_over()
end, { desc = "dap Step over" })
vim.keymap.set("n", "<F11>", function()
  require("dap").step_into()
end, { desc = "dap Step into by statement" })
-- seems to not work with codelldb ?
-- vim.keymap.set("n", "<F9>", function()
--   require("dap").step_into({steppingGranularity = 'instruction'})
-- end, { desc = "dap Step into by instruction" })
vim.keymap.set("n", "<F12>", function()
  require("dap").step_out()
end, { desc = "dap Step out" })
vim.keymap.set("n", "<leader>b", function()
  require("dap").toggle_breakpoint()
end, { desc = "dap Toggle breakpoint" })
vim.keymap.set("n", "<leader>sb", function()
  require("dap").set_breakpoint()
end, { desc = "dap Set breakpoint" })
vim.keymap.set("n", "<leader>lp", function()
  require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
end, { desc = "dap Set breakpoint with log point" })
vim.keymap.set("n", "<leader>do", function()
  require("dap").repl.open()
end, { desc = "dap Repl open?" })
vim.keymap.set("n", "<leader>dl", function()
  require("dap").run_last()
end, { desc = "dap Run last?" })

vim.keymap.set("n", "<leader>do", function()
  require("dapui").open()
end, { desc = "dapui Open" })
vim.keymap.set("n", "<leader>dc", function()
  require("dapui").close()
end, { desc = "dapui Close" })
vim.keymap.set("n", "<leader>de", function()
  require("dapui").eval()
end, { desc = "dapui Show hover window with evaluating expression" })
vim.keymap.set({ "n", "v" }, "<leader>dh", function()
  require("dap.ui.widgets").hover()
end, { desc = "dapui hover?" })
vim.keymap.set({ "n", "v" }, "<leader>dp", function()
  require("dap.ui.widgets").preview()
end, { desc = "dapui preview?" })
vim.keymap.set("n", "<leader>df", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.frames)
end, { desc = "dapui widgets frame float ?" })
vim.keymap.set("n", "<leader>ds", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.scopes)
end, { desc = "dapui widgets scopes float ?" })

vim.keymap.set("n", "<leader>;", ":Telescope commands<CR>", { desc = "Telescope commands" })
vim.keymap.set("n", "<leader>tch", ":Telescope command_history<CR>", { desc = "Telescope command history" })

vim.keymap.set("n", "<leader>G", ":CMakeGenerate <CR>", { desc = "CMake Configure and generate" })
vim.keymap.set("n", "<leader>B", ":CMakeBuild <CR>", { desc = "CMake Build" })
vim.keymap.set("n", "<leader>R", ":CMakeRun <CR>", { desc = "CMake Run" })
vim.keymap.set("n", "<leader>K", ":CMakeSelectKit <CR>", { desc = "CMake Select kit" })
vim.keymap.set("n", "<leader>S", ":CMakeSettings <CR>", { desc = "CMake Project settings" })
vim.keymap.set("n", "<leader>cd", ":CMakeDebug <CR>", { desc = "CMake Debug. Wanna add args?`:CMakeTargetSettings`" })
vim.keymap.set("n", "<leader>ce", ":CMakeCloseExecutor <CR>", { desc = "CMake Close executor" })
vim.keymap.set("n", "<leader>cr", ":CMakeCloseRunner <CR>", { desc = "CMake Close runner" })
vim.keymap.set("n", "<leader>oe", ":CMakeOpenExecutor <CR>", { desc = "CMake Open executor" })
vim.keymap.set("n", "<leader>or", ":CMakeOpenRunner <CR>", { desc = "CMake Open runner" })
vim.keymap.set("n", "<leader>se", ":CMakeStopExecutor <CR>", { desc = "CMake Stop current cmake executor's process" })
vim.keymap.set("n", "<leader>sr", ":CMakeStopRunner <CR>", { desc = "CMake Stop current cmake runner's process" })
vim.keymap.set("n", "<leader>cc", ":CMakeClean <CR>", { desc = "CMake Clean" })
vim.keymap.set("n", "<leader>qb", ":CMakeQuickBuild <CR>", { desc = "CMake Quick build" })
vim.keymap.set("n", "<leader>qr", ":CMakeQuickRun <CR>", { desc = "CMake Quick run" })
vim.keymap.set("n", "<leader>ci", ":CMakeInstall <CR>", { desc = "CMake Install" })
vim.keymap.set("n", "<leader>cl", ":CMakeLaunchArgs <CR>", { desc = "CMake Launch args" })
vim.keymap.set("n", "<leader>sp", ":CMakeSelectBuildPreset <CR>", { desc = "CMake Select build preset" })
vim.keymap.set("n", "<leader>st", ":CMakeSelectBuildTarget <CR>", { desc = "CMake Select build target" })
vim.keymap.set("n", "<leader>sT", ":CMakeSelectBuildType <CR>", { desc = "CMake Select build variant" })
vim.keymap.set("n", "<leader>sc", ":CMakeSelectConfigurePreset <CR>", { desc = "CMake Select configure preset" })
vim.keymap.set("n", "<leader>sl", ":CMakeSelectLaunchTarget <CR>", { desc = "CMake Select launch target" })
vim.keymap.set("n", "<leader>tf", ":CMakeShowTargetFiles <CR>", { desc = "CMake Show target file" })
vim.keymap.set("n", "<leader>ts", ":CMakeTargetSettings <CR>", { desc = "CMake Target settings" })
vim.keymap.set("n", "<leader>sb", ":CMakeSelectBuildDir <CR>", { desc = "CMake Select build dir" })
vim.keymap.set("n", "<leader>sw", ":CMakeSelectCwd <CR>", { desc = "CMake Select cwd" })

vim.keymap.set("n", "gD", function()
  vim.lsp.buf.declaration()
end, {
  desc = "LSP declaration",
})

vim.keymap.set("n", "gd", function()
  vim.lsp.buf.definition()
end, {
  desc = "LSP definition",
})

vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover()
end, {
  desc = "LSP hover",
})

vim.keymap.set("n", "gi", function()
  vim.lsp.buf.implementation()
end, {
  desc = "LSP implementation",
})

vim.keymap.set("n", "<leader>ls", function()
  vim.lsp.buf.signature_help()
end, { desc = "LSP signature help" })

vim.keymap.set("n", "<leader>D", function()
  vim.lsp.buf.type_definition()
end, { desc = "LSP definition type" })

vim.keymap.set("n", "<leader>ra", function()
  require("nvchad.renamer").open()
end, { desc = "LSP rename using renamer" })

vim.keymap.set("n", "<F2>", function()
  vim.lsp.buf.rename()
end, { desc = "LSP rename" })

vim.keymap.set("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP code action" })

vim.keymap.set({ "n", "v" }, "<leader>4", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP code action" })

vim.keymap.set("n", "gr", function()
  vim.lsp.buf.references()
end, { desc = "LSP references" })

vim.keymap.set("n", "<leader>f", function()
  vim.diagnostic.open_float { border = "rounded" }
end, { desc = "LSP Floating diagnostic" })

vim.keymap.set("n", "[d", function()
  vim.diagnostic.goto_prev { float = { border = "rounded" } }
end, { desc = "LSP Goto prev" })

vim.keymap.set("n", "]d", function()
  vim.diagnostic.goto_next { float = { border = "rounded" } }
end, { desc = "LSP Goto next" })

vim.keymap.set("n", "<leader>q", function()
  vim.diagnostic.setloclist()
end, { desc = "LSP Diagnostic setloclist" })

vim.keymap.set("n", "<leader>wa", function()
  vim.lsp.buf.add_workspace_folder()
end, { desc = "LSP Add workspace folder" })

vim.keymap.set("n", "<leader>wr", function()
  vim.lsp.buf.remove_workspace_folder()
end, { desc = "LSP Remove workspace folder" })

vim.keymap.set("n", "<leader>wl", function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, { desc = "LSP List workspace folders" })

vim.keymap.set("n", "<leader>nf", function()
  require("neogen").generate()
end, { desc = "Neogen generate smth" })

-- more keybinds!

vim.api.nvim_set_keymap("n", "<C-g>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-g>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>a", "<cmd>CodeCompanionToggle<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>a", "<cmd>CodeCompanionToggle<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "ga", "<cmd>CodeCompanionAdd<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd [[cab cc CodeCompanion]]

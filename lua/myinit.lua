-- local autocmd = vim.api.nvim_create_autocmd

-- https://github.com/NvChad/NvChad/issues/1417#issuecomment-1203490842
local enable_providers = {
  "python3_provider",
  "node_provider",
  "perl_provider",
  "ruby_provider",
  -- and so on
}

for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

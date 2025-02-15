---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"

M.base46 = {
  theme = "decay",
  theme_toggle = { "decay", "flexoki-light" },
  -- transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,
}

-- M.plugins = "plugins"

-- check core.mappings for table structure
-- M.mappings = require "mappings"

M.lazy_nvim = require "lazy_nvim"

return M

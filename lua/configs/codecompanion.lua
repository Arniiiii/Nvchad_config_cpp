require("codecompanion").setup {
  adapters = {
    anthropic = function()
      return require("codecompanion.adapters").extend("anthropic", {
        env = {
          api_key = "",
        },
      })
    end,
  },
  chat = {
    adapter = "anthropic",
  },
  inline = {
    adapter = "anthropic",
  },
  agent = {
    adapter = "anthropic",
  },
  -- adapters = {
  --   ollama = require("codecompanion.adapters").extend("ollama"),
  --   chat = require("codecompanion.adapters").extend("ollama"),
  --   inline = require("codecompanion.adapters").extend("ollama"),
  -- },
  -- strategies = {
  --   chat = "ollama",
  --   inline = "ollama",
  -- },
  log_level = "DEBUG",
}

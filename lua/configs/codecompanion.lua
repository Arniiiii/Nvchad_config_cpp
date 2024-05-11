require("codecompanion").setup({
  adapters = {
    ollama = require("codecompanion.adapters").use("ollama"),
    chat = require("codecompanion.adapters").use("ollama"),
    inline = require("codecompanion.adapters").use("ollama"),
  },
  strategies = {
    chat = "ollama",
    inline = "ollama",
  },
  log_level = "DEBUG"
})

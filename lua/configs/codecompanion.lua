require("codecompanion").setup({
  adapters = {
    chat = require("codecompanion.adapters").use("ollama"),
    inline = require("codecompanion.adapters").use("ollama"),
  },
  log_level = "DEBUG"
})

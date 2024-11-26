require("codecompanion").setup {
  adapters = {
    dolphin_mistral = function()
      return require("codecompanion.adapters").extend("ollama", {
        name = "dolphin-mistral:latest", -- Give this adapter a different name to differentiate it from the default ollama adapter
        schema = {
          model = {
            default = "dolphin-mistral:latest",
          },
          num_ctx = {
            default = 32768,
          },
          num_predict = {
            default = -1,
          },
        },
      })
    end,
  },
  strategies = {
    chat = {
      adapter = "dolphin_mistral",
    },
    inline = {
      adapter = "dolphin_mistral",
    },
    agent = {
      adapter = "dolphin_mistral"
    }
  },
  opts = {
    send_code = true,
  }
}

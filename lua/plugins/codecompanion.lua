return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("codecompanion").setup({
      language = "Chinese",
      strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama",
        },
      },
      opts = {
        log_level = "ERROR",
      },
      adapters = {
        http = {
          ollama = function()
            return require("codecompanion.adapters").extend("ollama", {
              env = {
                url = "http://127.0.0.1:11434",
              },
              schema = {
                model = {
                  default = "qwen2.5-coder:7b",
                },
              },
            })
          end,
        },
        -- for lmstudio
        -- http = {
        --   ["llama.cpp"] = function()
        --     return require("codecompanion.adapters").extend("openai_compatible", {
        --       env = {
        --         url = "http://127.0.0.1:1234",
        --         chat_url = "/v1/chat/completions",
        --       },
        --       handlers = {
        --         parse_message_meta = function(self, data)
        --           local extra = data.extra
        --           if extra and extra.reasoning_content then
        --             data.output.reasoning = { content = extra.reasoning_content }
        --             if data.output.content == "" then
        --               data.output.content = nil
        --             end
        --           end
        --           return data
        --         end,
        --       },
        --     })
        --   end,
        -- },
      },
    })
  end,
}

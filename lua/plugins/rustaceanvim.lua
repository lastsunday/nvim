return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          procMacro = {
            ignored = {
              -- https://github.com/LazyVim/LazyVim/discussions/5638
              ["async-trait"] = vim.NIL,
            },
          },
        },
      },
    },
  },
}

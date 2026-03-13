-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local map = vim.api.nvim_set_keymap
-- local opts = { noremap = true, silent = true }

--- flutter start
vim.keymap.set("n", "<leader>of", require("telescope").extensions.flutter.commands, { desc = "Open flutter commands" })
vim.keymap.set("n", "<leader>ot", require("telescope.builtin").builtin, { desc = "Open telescope" })
--- flutter end

--- https://codecompanion.olimorris.dev/getting-started#suggested-plugin-workflow
vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<LocalLeader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])

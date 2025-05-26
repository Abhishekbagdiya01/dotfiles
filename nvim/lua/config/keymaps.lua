-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Add semicolon at the end of the line
vim.keymap.set("n", "<leader>e;", "A;<Esc>h", { desc = "Add ; at EOL" })

-- Add comma at the end of the line
vim.keymap.set("n", "<leader>e,", "A,<Esc>h", { desc = "Add , at EOL" })

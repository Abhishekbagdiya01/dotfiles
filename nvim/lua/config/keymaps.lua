-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- ~/.config/nvim/lua/config/keymaps.lua
-- This file maps your custom .ideavimrc keybinds to LazyVim-style Neovim Lua keymaps

local map = vim.keymap.set
local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

-- ==================== General ====================
vim.o.scrolloff = 5
vim.o.incsearch = true
vim.o.number = true
vim.o.relativenumber = true

-- ==================== Leader Key ====================
vim.g.mapleader = " "

-- ==================== File Navigation ====================
map("n", "<leader>o", ":SymbolsOutline<CR>", opts("Outline / File Structure"))
map("n", "<C-f>", ":Telescope find_files<CR>", opts("Find File"))
map("n", "<C-r>", ":Telescope oldfiles<CR>", opts("Recent Files"))

-- ==================== Buffers & Tabs ====================
map("n", "<S-l>", ":bnext<CR>", opts("Next Buffer"))
map("n", "<S-h>", ":bprevious<CR>", opts("Previous Buffer"))

-- ==================== Terminal ====================
map("n", "<leader>tt", ":ToggleTerm direction=horizontal<CR>", opts("Toggle Terminal"))
map("n", "<leader>ts", ":ToggleTerm direction=horizontal<CR>", opts("New Terminal Tab"))

-- ==================== Code Actions ====================
map("n", "<leader>ci", ":OrganizeImports<CR>", opts("Optimize Imports"))
map("n", "<leader>ca", vim.lsp.buf.code_action, opts("Code Action"))
map("v", "<leader>ca", vim.lsp.buf.code_action, opts("Code Action"))
map(
  "n",
  "<leader>cR",
  ":lua require('telescope.builtin').find_files({ prompt_title = 'Rename File' })<CR>",
  opts("Rename/Move File")
)

-- ==================== Rename & Find ====================
map("n", "<leader>rn", vim.lsp.buf.rename, opts("Rename Symbol"))

-- ==================== Peek ====================
map("n", "<leader>pd", ":Lspsaga peek_definition<CR>", opts("Peek Definition"))
map("n", "<leader>pi", ":Lspsaga peek_implementation<CR>", opts("Peek Implementations"))
map("n", "<leader>*", ":Telescope lsp_document_symbols<CR>", opts("Highlight Symbol in File"))

-- ==================== Navigation ====================
map("n", "K", vim.lsp.buf.hover, opts("Hover Docs"))
map("n", "gK", vim.lsp.buf.signature_help, opts("Signature Help"))
map("n", "gd", vim.lsp.buf.definition, opts("Goto Declaration"))
map("n", "gD", vim.lsp.buf.declaration, opts("Goto Declaration"))
map("n", "gr", ":Telescope lsp_references<CR>", opts("Find Usages"))
map("n", "gI", vim.lsp.buf.implementation, opts("Goto Implementation"))
map("n", "gy", vim.lsp.buf.type_definition, opts("Goto Type Declaration"))

-- ==================== Misc ====================
map("n", "<leader>q;", "A;<Esc>", opts("Add Semicolon"))
map("n", "<leader>q,", "A,<Esc>", opts("Add Comma"))

-- ==================== Line Movement ====================
map("n", "<C-j>", ":m .+1<CR>==", opts("Move Line Down"))
map("n", "<C-k>", ":m .-2<CR>==", opts("Move Line Up"))

-- ==================== Git ====================
map("n", "<leader>gs", ":Telescope git_status<CR>", opts("Git Status"))
map("n", "<leader>gb", ":Telescope git_branches<CR>", opts("Git Branches"))
map("n", "<leader>gl", ":Telescope git_commits<CR>", opts("Git Log"))

-- ==================== Surround (Handled by plugin) ====================
-- nvim-surround will auto-setup for s, S, etc.

-- ==================== Reload Config ====================
map("n", "<leader>sv", "<cmd>lua require('lazyvim.util').reload()<CR>", opts("Reload Config"))

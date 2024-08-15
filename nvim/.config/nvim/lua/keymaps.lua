vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- clear search highlights
vim.api.nvim_set_keymap("n", "<Leader>ch", ":noh<CR>", { noremap = true, silent = true })
-- escape
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })
-- window splits and navigation
vim.api.nvim_set_keymap("n", "<Leader>sv", "<C-w>v", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sh", "<C-w>s", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sc", "<C-w>c", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>wh", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>wj", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>wk", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>wl", "<C-w>l", { noremap = true, silent = true })

local setkeymap = vim.keymap.set
local cmd = vim.cmd

vim.g.mapleader = " "
vim.g.maplocalleader = " "

setkeymap("n", "<leader>w", cmd.w)
setkeymap("n", "<leader>q", cmd.q, { silent = true })
setkeymap("n", "<leader>qq", cmd.qa)
setkeymap("n", "<esc>", cmd.nohlsearch)
setkeymap("i", "jj", "<esc>")

setkeymap("n", "<leader>e", ":Oil<CR>", { silent = true })

local setkeymap = vim.keymap.set
local cmd = vim.cmd

vim.g.mapleader = " "
vim.g.maplocalleader = " "

setkeymap("n", "<leader>w", cmd.w)
setkeymap("n", "<leader>q", cmd.q)
setkeymap("n", "<leader>qq", cmd.qa)

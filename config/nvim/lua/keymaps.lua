local setkeymap = vim.keymap.set
local cmd = vim.cmd

-- setting leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- setting basic keymaps
setkeymap("n", "<leader>q", cmd.q)
setkeymap("n", "<leader>Q", cmd.qa)
setkeymap("n", "<leader>w", cmd.w)

require("plugins.mini-icons")
require("plugins.web-devicons")

require("oil").setup()

vim.keymap.set("n", "<leader>e", ":Oil<CR>", { silent = true })

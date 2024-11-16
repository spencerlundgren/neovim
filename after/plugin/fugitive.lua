vim.keymap.set("n", "<leader>gg", vim.cmd.Git);
vim.keymap.set("n", "<leader>gh", ":Gclog<CR>")
vim.keymap.set("n", "tl", ":diffget //2<CR>")
vim.keymap.set("n", "tr", ":diffget //3<CR>")
vim.keymap.set("n", "tt", ":Gwrite<CR>")
vim.keymap.set("n", "tt!", ":Gwrite!<CR>")

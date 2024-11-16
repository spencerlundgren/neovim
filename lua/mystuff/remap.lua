vim.g.mapleader = " "

-- vim.keymap.set('n', 'gr', function() require('telescope.builtin').lsp_references(), {
--   noremap = true, silent = true }
-- end)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set('i', '<Tab>', function()
  return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
end, { expr = true })
vim.keymap.set("i", "<S-Tab>", function()
  if (vim.fn.pumvisible() == 1) then
    return "<C-p>"
  else
    return "<S-Tab>"
  end
end, {expr = true, replace_keycodes = true})

vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", {})

vim.keymap.set("n", "<C-w>k", ":resize +5<CR>", {})
vim.keymap.set("i", "<C-w>k", ":resize +5<CR>", {})
vim.keymap.set("v", "<C-w>k", ":resize +5<CR>", {})

vim.keymap.set("n", "<C-w>j", ":resize -5<CR>", {})
vim.keymap.set("i", "<C-w>j", ":resize -5<CR>", {})
vim.keymap.set("v", "<C-w>j", ":resize -5<CR>", {})

vim.keymap.set("n", "<C-w>h", ":vertical-resize -5<CR>", {})
vim.keymap.set("i", "<C-w>h", ":vertical-resize -5<CR>", {})
vim.keymap.set("v", "<C-w>h", ":vertical-resize -5<CR>", {})

vim.keymap.set("n", "<C-w>l", ":vertical-resize +5<CR>", {})
vim.keymap.set("i", "<C-w>l", ":vertical-resize +5<CR>", {})
vim.keymap.set("v", "<C-w>l", ":vertical-resize +5<CR>", {})

vim.keymap.set("n", "<leader><CR>", "yyp:.!sh<CR>")
-- vim.keymap.set("n", "<leader><CR>", ":.!sh<CR>")
vim.keymap.set("n", "<leader>lr", ":LspRestart<CR>")
vim.keymap.set("n", "<leader>nt", ":tabe %:h<CR>")

vim.keymap.set("n", "<leader>sv", ":vsp<CR>")


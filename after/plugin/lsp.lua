local lsp = require('lsp-zero').preset({})


lsp.ensure_installed({
  'tsserver',
  'eslint',
})


lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
  }
})

vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>");
vim.keymap.set("n", "<leader>df", "<cmd>lua vim.diagnostic.open_float()<CR>");

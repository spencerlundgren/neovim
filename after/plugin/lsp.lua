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


-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require("neodev").setup({
  -- add any options here, or leave empty to use the default settings
})

-- then setup your lsp server as usual
local lspconfig = require('lspconfig')

-- example to setup lua_ls and enable call snippets
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})

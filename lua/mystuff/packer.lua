-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {
	'nvim-telescope/telescope-fzf-native.nvim',
	build = 'make',
	cond = function()
	  return vim.fn.executable 'make' == 1
	end,
      },
    }
  }
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  -- use('Mofiqul/vscode.nvim')

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use({
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
    requiresrequires = 'nvim-treesitter/nvim-treesitter',
  })
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }
  use('numToStr/Comment.nvim')
  use('JoosepAlviste/nvim-ts-context-commentstring')
  use('folke/which-key.nvim')
  use('lewis6991/gitsigns.nvim' )
  use('nvim-lualine/lualine.nvim')
  use{'lukas-reineke/indent-blankline.nvim'}
  use { 'alexghergh/nvim-tmux-navigation', config = function()

        local nvim_tmux_nav = require('nvim-tmux-navigation')

        nvim_tmux_nav.setup {
            disable_when_zoomed = true -- defaults to false
        }

        vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
        vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
        vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
        vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
        vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
        vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

    end
}
use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})

use {
  'mfussenegger/nvim-dap',
  requires = {
    {'rcarriga/nvim-dap-ui'},
    {'theHamsta/nvim-dap-virtual-text'},
    {"jay-babu/mason-nvim-dap.nvim"},
  },
}

use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
use { "mfussenegger/nvim-dap-python", requires = {"mfussenegger/nvim-dap"} }

use {
  'Joakker/lua-json5',
  run = './install.sh'
}
use({'folke/neodev.nvim'})



end)

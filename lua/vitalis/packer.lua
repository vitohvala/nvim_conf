-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.0',
	--or 				, branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use '/vim-airline/vim-airline'
  use '/vim-airline/vim-airline-themes'
  use '/rafi/awesome-vim-colorschemes'
  use '/ryanoasis/vim-devicons'
  use 'norcalli/nvim-colorizer.lua'
  use '/preservim/nerdtree'
  use '/mbbill/undotree'
   use {
      'neanias/everforest-nvim',
      config = function()
          require("everforest").setup()
      end,
  }
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
  end)

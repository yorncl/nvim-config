return require('packer').startup(function()

	-- Packer
	use 'wbthomason/packer.nvim'

	-- Color scheme
	use 'morhetz/gruvbox'

	use {
	  "folke/which-key.nvim",
	  config = function()
	    require("which-key").setup {
	    }
	  end
	}
	use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { 'preservim/nerdtree',
	  requires = {
		  { 'Xuyuanp/nerdtree-git-plugin' },
		  { 'ryanoasis/vim-devicons' },
		  { 'tiagofumo/vim-nerdtree-syntax-highlight' }
	  }
	}
	use 'tpope/vim-surround'

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'


end)

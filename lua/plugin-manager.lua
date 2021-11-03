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
	use 'ryanoasis/vim-devicons'
	use 'tiagofumo/vim-nerdtree-syntax-highlight'
	use 'tpope/vim-surround'
	
	-- COC for LSP
	
	use  { 'neoclide/coc.nvim', branch = 'release' } 


end)

return require('packer').startup(function()

	-- Packer
	use 'wbthomason/packer.nvim'

	-- Color scheme
	use 'morhetz/gruvbox'

	use {
	  "folke/which-key.nvim",
	  config = function()
	    require("which-key").setup {
	      -- your configuration comes here
	      -- or leave it empty to use the default settings
	      -- refer to the configuration section below
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
end)

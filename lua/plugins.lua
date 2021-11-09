return require('packer').startup(function()

	-- Packer
	use 'wbthomason/packer.nvim'

	-- Color scheme
	use 'tomasr/molokai'
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

	-- Tree sitter
	use 'nvim-treesitter/nvim-treesitter'
	use 'tiagofumo/vim-nerdtree-syntax-highlight'

	-- Fonts and icons for file explorer
	use 'ryanoasis/vim-devicons'

	-- To surround text
	use 'tpope/vim-surround'
	
	-- COC for LSP
	use  { 'neoclide/coc.nvim', branch = 'release' } 
	use 'OmniSharp/omnisharp-vim'

	-- Harpoon 
	use 'ThePrimeagen/harpoon'

	-- Snippets 
	use 'mlaursen/vim-react-snippets'

end)

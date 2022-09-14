return require('packer').startup(function()

	-- Packer
	use 'wbthomason/packer.nvim'

	-- Color scheme
	use 'tomasr/molokai'
	use 'morhetz/gruvbox'
	use 'sam4llis/nvim-tundra'

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
	-- Fonts and icons for file explorer
	use 'ryanoasis/vim-devicons'
	-- To surround text
	use 'tpope/vim-surround'
	-- Harpoon
	use 'ThePrimeagen/harpoon'
	-- Snippets
	use 'mlaursen/vim-react-snippets'
	-- Commenting
	use 'tpope/vim-commentary'
	-- Commenting
	use 'tpope/vim-sleuth'
	-- Whitespaces
	use 'ntpeters/vim-better-whitespace'

	-- Mason with recommended lpugins
	use {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
	}
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use 'mfussenegger/nvim-dap'
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'mfussenegger/nvim-lint'
	use 'mhartington/formatter.nvim'
	use {
	  'kyazdani42/nvim-tree.lua',
	  requires = {
	    'kyazdani42/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
end)

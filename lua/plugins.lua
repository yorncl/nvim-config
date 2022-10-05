return require('packer').startup(function()

	-- Packer
	use 'wbthomason/packer.nvim'

	-- Color scheme
	use 'tomasr/molokai'
	use 'morhetz/gruvbox'
	use 'sam4llis/nvim-tundra'
	use 'navarasu/onedark.nvim'

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
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").setup()
		end,
		requires = { "nvim-lua/plenary.nvim" },
	})
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'tpope/vim-fugitive'
	use 'simrat39/symbols-outline.nvim'
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}
	use {
		'nvim-treesitter/nvim-treesitter-context',
		requires = { 'nvim-treesitter/nvim-treesitter' }
	}
end)

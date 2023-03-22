return require('packer').startup(function()

	-- Packer
	use 'wbthomason/packer.nvim'

	-- Color scheme
	use { "catppuccin/nvim", as = "catppuccin" }

	-- Copilot
	use { "github/copilot.vim" }

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

	-- functions signatures
	use "ray-x/lsp_signature.nvim"

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
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional


			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

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
	use "ggandor/leap.nvim"
	-- Lua
	use {
	  "folke/zen-mode.nvim",
	  config = function()
	    require("zen-mode").setup {}
	  end
	}
end)

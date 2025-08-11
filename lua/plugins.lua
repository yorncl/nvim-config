require('lazy').setup({

	-- LSP setup for lua neovim development of plugins and config
	"folke/neodev.nvim",

	-- Color scheme
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "nyoom-engineering/oxocarbon.nvim" },


	-- Copilot
	{ "github/copilot.vim" },

	{
		-- helper menu for keybindings
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup {
			}
		end
	},
	{
		-- Fuzzy finder
		'nvim-telescope/telescope.nvim',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},

	-- Tree sitter
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

	{
	  "nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = {
	    "nvim-tree/nvim-web-devicons",
	  },
	  config = function()
	    require("nvim-tree").setup {}
	  end,
	},
	-- Fonts and icons for file explorer
	'ryanoasis/vim-devicons',
	-- To surround text
	'tpope/vim-surround',
	-- To auto manage sessions
	'tpope/vim-obsession',
	-- Harpoon
	'ThePrimeagen/harpoon',
	-- Snippets
	'mlaursen/vim-react-snippets',
	-- Commenting
	'tpope/vim-commentary',
	-- Commenting
	'tpope/vim-sleuth',

	-- functions signatures
	"ray-x/lsp_signature.nvim",

	{'williamboman/mason.nvim'},
	{'neovim/nvim-lspconfig'},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = { { "mason-org/mason.nvim", opts = {} }, "neovim/nvim-lspconfig", }
	},

	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{'nvimtools/none-ls.nvim', dependencies='nvim-lua/plenary.nvim'},

	-- code context status bar TODO implement the setup function
	{
	    "SmiteshP/nvim-navic",
	    dependencies = "neovim/nvim-lspconfig"
	},

	-- Debugger adapter protocol
	{"jay-babu/mason-nvim-dap.nvim"},
	{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },

	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
	},
	'simrat39/symbols-outline.nvim',
	{
		'romgrk/barbar.nvim',
		dependencies = {'kyazdani42/nvim-web-devicons'}
	},
	{
		'nvim-treesitter/nvim-treesitter-context',
		dependencies = { 'nvim-treesitter/nvim-treesitter' }
	},
	"ggandor/leap.nvim",
	{
	  "folke/zen-mode.nvim",
	  config = function()
	    require("zen-mode").setup {}
	  end
	},

	"norcalli/nvim-colorizer.lua",

	{"tpope/vim-fugitive"},

})

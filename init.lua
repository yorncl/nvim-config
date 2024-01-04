require('plugins')
require('remaps')

-- needs to be before lsp
require("neodev").setup()

-- setup in its own file
require('lsp')

require('settings')
require('which-key-conf')
require('tabline-conf')

require("mason").setup()
require("mason-nvim-dap").setup()

require 'colorizer'.setup {
  'css';
  'javascript';
  html = {
    mode = 'foreground';
  }
}

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = true, -- disables setting the background color.
    integrations = {
        nvimtree = {
          enabled = true,
          transparent_panel = true,
        }
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"


-- disable netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- show signs
    signs = true,
    -- delay update diagnostics
    update_in_insert = false,
    -- display_diagnostic_autocmds = { "InsertLeave" },
  }
)

require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.autopep8,
        require("null-ls").builtins.diagnostics.eslint,
    },
})

require("lualine").setup()
require("symbols-outline").setup()
require('leap').set_default_keymaps()
require "lsp_signature".setup({})


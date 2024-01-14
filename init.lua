--  Setting up plugin management
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require('plugins')

require('mappings').setup()

-- needs to be before lsp
require("neodev").setup()

-- setup in its own file
require('lsp')

require('settings')
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

require("symbols-outline").setup()
require('leap').set_default_keymaps()
require "lsp_signature".setup({})


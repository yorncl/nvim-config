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
require('treesitter')
require('settings')
require('tabline-conf')

require("mason").setup()
require('dap-conf')

require 'colorizer'.setup {
  'css',
  'javascript',
  html = {
    mode = 'foreground',
  }
}

require("catppuccin").setup({
  flavour = "mocha",                -- latte, frappe, macchiato, mocha
  transparent_background = false,   -- disables setting the background color.
  integrations = {
    nvimtree = {
      enabled = true,
      transparent_panel = true,
    }
  },
  color_overrides = {
    mocha = {
      base = "#000000",
      crust = "#000000",
      mantle = "#000000",
    }
  },
})
-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

-- leap motions
vim.keymap.set('n', 's', function()
  require('leap').leap { target_windows = { vim.api.nvim_get_current_win() } }
end)

-- Straight from stackoverflow
-- apprently a fix for a weird telescope behaviour where the selected file opens in insert mode
vim.api.nvim_create_autocmd("WinLeave", {
  callback = function()
    if vim.bo.ft == "TelescopePrompt" and vim.fn.mode() == "i" then
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "i", false)
    end
  end,
})


-- disable netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
-- empty setup using defaults
require("nvim-tree").setup()

require("symbols-outline").setup()
require('leap').set_default_keymaps()
require "lsp_signature".setup({})

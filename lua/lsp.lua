
local lsp_zero = require('lsp-zero')

-- see :help lsp-zero-guide:integrate-with-mason-nvim
-- to learn how to use mason.nvim with lsp-zero
require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  }
})

lsp_zero.preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- Navic setup for lsp context  
local navic = require("nvim-navic")
-- setting navic in the lualine
require("lualine").setup({
    sections = {
        lualine_c = {
            {
              function()
                  return navic.get_location()
              end,
              cond = function()
                  return navic.is_available()
              end
            },
        }
    },
})

lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
  require("mappings").setup_lsp(opts)

  if client.server_capabilities.documentSymbolProvider then
      navic.attach(client, bufnr)
  end
end)

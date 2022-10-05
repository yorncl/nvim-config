require('remaps')
require('settings')
require('plugins')
require('nvim-cmp-conf')
require('which-key-conf')
require('tabline-conf')
require("mason").setup()


local  on_attach = require("lspconfig-conf")

require("mason-lspconfig").setup_handlers({
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup { on_attach = on_attach }
  end,
})
require("mason-lspconfig").setup()


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
require('onedark').load()

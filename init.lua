require('plugins')
require('remaps')
require('lsp')
require('settings')
require('which-key-conf')
require('tabline-conf')
require('startify')



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


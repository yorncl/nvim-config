
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

require("mason-lspconfig").setup_handlers({
-- The first entry (without a key) will be the default handler
-- and will be called for each installed server that doesn't have
-- a dedicated handler.
-- function(server_name) -- default handler (optional)
--         require("lspconfig")[server_name].setup({})
-- end,
-- Next, you can provide a dedicated handler for specific servers.
-- For example, a handler override for the `rust_analyzer`:
["omnisharp_mono"] = function()
        require("lspconfig").omnisharp.setup({
                handlers = {
                        ["textDocument/definition"] = require("omnisharp_extended").handler,
                },
                -- cmd = { "dotnet", "/path/to/omnisharp/OmniSharp.dll" },

                -- Enables support for reading code style, naming convention and analyzer
                -- settings from .editorconfig.
                enable_editorconfig_support = true,

                -- If true, MSBuild project system will only load projects for files that
                -- were opened in the editor. This setting is useful for big C# codebases
                -- and allows for faster initialization of code navigation features only
                -- for projects that are relevant to code that is being edited. With this
                -- setting enabled OmniSharp may load fewer projects and may thus display
                -- incomplete reference lists for symbols.
                enable_ms_build_load_projects_on_demand = false, -- default false

                -- Enables support for roslyn analyzers, code fixes and rulesets.
                enable_roslyn_analyzers = true, -- default false

                -- Specifies whether 'using' directives should be grouped and sorted during
                -- document formatting.
                organize_imports_on_format = true, -- default false

                -- Enables support for showing unimported types and unimported extension
                -- methods in completion lists. When committed, the appropriate using
                -- directive will be added at the top of the current file. This option can
                -- have a negative impact on initial completion responsiveness,
                -- particularly for the first few completion sessions after opening a
                -- solution.
                enable_import_completion = true, -- default false

                -- Specifies whether to include preview versions of the .NET SDK when
                -- determining which version to use for project loading.
                sdk_include_prereleases = true,

                -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
                -- true
                analyze_open_documents_only = true, -- default false
        })
end})


local cmp = require('cmp')
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- confirm completion
    ['<C-y>'] = cmp.mapping.confirm({select = true}),
  })
})

lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
  require("mappings").setup_lsp(opts)

  if client.server_capabilities.documentSymbolProvider then
      navic.attach(client, bufnr)
  end
end)


require('mason-null-ls').setup({
})

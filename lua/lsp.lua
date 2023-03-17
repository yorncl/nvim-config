-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('lsp-compe')

lsp.setup()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')

local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_text(0, line-1, 0, line-1, col, {})[1]:match("^%s*$") == nil
end

local cmp_config = lsp.defaults.cmp_config({
 mapping = {
	["<Tab>"] = vim.schedule_wrap(function(fallback)
	      if cmp.visible() and has_words_before() then
		cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
	      else
		fallback()
	      end
	    end),
	["<CR>"] = cmp.mapping.confirm({
      -- this is the important line
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    }),
  },
  window = {
    completion = cmp.config.window.bordered()
  },
   sources = { {
      name = "path"
    }, {
      keyword_length = 3,
      name = "nvim_lsp"
    }, {
      keyword_length = 3,
      name = "buffer"
    }, {
      keyword_length = 2,
      name = "luasnip"
    }, {
	name = 'nvim_lsp_signature_help'
    },
    -- { name = "copilot", group_index = 2 },
    },
})

-- print(vim.inspect(cmp_config))

cmp.setup(cmp_config)

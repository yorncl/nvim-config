
-- Changing the leader key to space
vim.g.mapleader = ' '

local hui = require("harpoon.ui")
local hmark = require("harpoon.mark")

local mappings = {
  -- Harpoon controls
  ["Harpoon menu"] = {'n', "<C-h>", function() hui.toggle_quick_menu() end},
  ["Harpoon add file"] = {'n', "<C-t>", function() hmark.add_file() end},
  ["Harpoon file 1"] = {'n', "<C-j>", function() hui.nav_file(1) end},
  ["Harpoon file 2"] = {'n', "<C-k>", function() hui.nav_file(2) end},
  ["Harpoon file 3"] = {'n', "<C-l>", function() hui.nav_file(3) end},

  -- Useful for lua dev and plugin dev
  ["Execute current lua file"] = {'n', "<C-X>l", ":w<CR>:luafile %<CR>"},

  -- Telescope schortcuts
  ["Telescope keymaps"] = {'n', "<leader>k", ":Telescope keymaps<CR>"},
  ["Telescope search file"] = {'n', "<leader>sf", ":Telescope find_files<CR>"},
  ["Telescope search text"] = {'n', "<leader>st", ":Telescope live_grep<CR>"},

  ["Indent right"] = {'v', '>', '>gv'},
  ["Indent left"] = {'v', '<', '<gv'},

  ["Toggle file explorer"] = {'n', '<leader>e', ':NvimTreeToggle<CR>'},
  ["Toggle symbols outline"] = {'n', '<leader>s', ':SymbolsOutline<CR>'},
  ["Toggle Zen mode"] = {'n', '<leader>z', ':ZenMode<CR>'},

  -- Diverse menus
  ["Show mason's interface"] = {'n', '<leader>Im', ':Mason<CR>'},
  ["Show lsp info"] = {'n', '<leader>Il', ':LspInfo<CR>'},
  ["Show Lazy plugin manager"] = {'n', '<leader>Ip', ':Lazy<CR>'},

  ["Remove highlithing"] = {'n', '<leader>h', ':noh<CR>'},

  -- append line directly above or below the current line
  ["Append line below"] = {'n', '<leader>o', ':<C-u>call append(line("."),   repeat([""], v:count1))<CR>'},
  ["Append line above"] = {'n', '<leader>O', ':<C-u>call append(line(".")-1,   repeat([""], v:count1))<CR>'}, -- Commenting with tpope/commentary
  ["Toggle comment on line"] = {'n', '<C-_>', ':Commentary<CR>'},
  ["Toggle comment on selection"] = {'v', '<C-_>', ':Commentary<CR>'},
  ["Control C to escape"] = {'i', '<C-c>', '<Esc>'},

  ["Format this buffer"] = {'n', '<leader>f', function() vim.lsp.buf.format() end},

  -- Quit all 
  ["Quit all"] = {'n', '<leader>qf', ':qa!<cr>'},

}

local tele = require('telescope.builtin')

local lsp_mappings = {
  ["lsp definition"] = {"n", "gd", function() vim.lsp.buf.definition() end},
  ["lsp implemtnation"] = {"n", "gi", function() vim.lsp.buf.implementation() end},
  ["lsp hover"] = {"n", "K", function() vim.lsp.buf.hover() end},
  ["lsp workspace symbol"] = {"n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end},
  ["lsp diagnostic float"] = {"n", "<leader>d", function() vim.diagnostic.open_float() end},
  ["lsp goto next diagnostic"] = {"n", "[d", function() vim.diagnostic.goto_next() end},
  ["lsp goto prev diagnostic"] = {"n", "]d", function() vim.diagnostic.goto_prev() end},
  ["lsp code action"] = {"n", "<leader>ca", function() vim.lsp.buf.code_action() end},
  ["lsp display codelens"] = {"n", "<leader>ld", function() vim.lsp.codelens.display() end},
  -- ["lsp references"] = {"n", "<leader>rr", function() vim.lsp.buf.references() end},
  ["lsp telescope references"] = {"n", "<leader>rr", function() tele.lsp_references() end},
  -- ["telescope treesitter"] = {"n", "<leader>rt", function() tele.treesitter() end},
  ["lsp rename"] = {"n", "<leader>rn", function() vim.lsp.buf.rename() end},
}

local function setup_mappings(table, opts)
  for desc, map in pairs(table) do
      local mode, key, result, opts_override = unpack(map)
      if opts == nil then
        opts = opts_override
        if opts == nil then
          opts = {}
        end
      end
      opts.desc = desc
      vim.keymap.set(mode, key, result, opts)
  end
end

local function setup()
  setup_mappings(mappings)
end

local function setup_lsp(opts)
  setup_mappings(lsp_mappings, opts)
end

return {
  setup = setup,
  setup_lsp = setup_lsp
}

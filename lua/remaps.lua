
-- A good chunk of the remaps are in the lua/plugins/which-wkey.lua file
local map = vim.api.nvim_set_keymap

local nor = {noremap=true}

-- Changing the leader key to space
vim.g.mapleader = ' '

-- Indentation in visual mode
map('v', '>', '>gv', nor)
map('v', '<', '<gv', nor)

-- Commenting with tpope/commentary
map('n', '<c-_>', ':Commentary<CR>', nor)
map('v', '<c-_>', ':Commentary<CR>', nor)


local hui = require("harpoon.ui")
local hmark = require("harpoon.mark")

vim.keymap.set('n', "<C-h>", function() hui.toggle_quick_menu() end, nor)
vim.keymap.set('n', "<C-a>", function() hmark.add_file() end, nor)
vim.keymap.set('n', "<C-j>", function() hui.nav_file(1) end, nor)

-- vim.keymap.set('i', "<C-c>", function() hui.nav_file(1) end, nor)

-- remap ctrl c to escape for copilot
map('i', '<C-c>', '<Esc>', nor)


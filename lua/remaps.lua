
-- A good chunk of the remaps are in the lua/plugins/which-wkey.lua file

local map = vim.api.nvim_set_keymap
local nor = {noremap=true}

-- Changing the leader key to space
vim.g.mapleader = ' '


-- Indentation in visual mode
map('v', '>', '>gv', nor)
map('v', '<', '<gv', nor)

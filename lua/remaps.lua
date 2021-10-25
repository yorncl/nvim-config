
local map = vim.api.nvim_set_keymap
local nor = {noremap=true}

-- Changing the leader key to space
vim.g.mapleader = ' '

-- Which key trigger in normal mode
-- map('n', '<leader>', ':WhichKey<CR>', nor)

-- Indentation
map('v', '>', '>gv', nor)
map('v', '<', '<gv', nor)

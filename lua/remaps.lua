
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

--Harpoon
map('n', 'gH', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', nor)
map('n', 'ga', ':lua require("harpoon.mark").add_file()<CR>', nor)
map('n', 'gj', ':lua require("harpoon.ui").nav_file(1)<CR>', nor)
map('n', 'gk', ':lua require("harpoon.ui").nav_file(2)<CR>', nor)
map('n', 'gl', ':lua require("harpoon.ui").nav_file(3)<CR>', nor)
map('n', 'gJ', ':lua require("harpoon.ui").nav_file(4)<CR>', nor)
map('n', 'gK', ':lua require("harpoon.ui").nav_file(5)<CR>', nor)
map('n', 'gL', ':lua require("harpoon.ui").nav_file(6)<CR>', nor)

-- Buffer navigation
map('n', 'L', ':bn<CR>', nor)
map('n', 'H', ':bp<CR>', nor)


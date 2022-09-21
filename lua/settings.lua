vim.wo.number = true

-- Theme and transparency
vim.cmd('colorscheme gruvbox')

vim.cmd(":hi Normal ctermbg=none guibg=none")

-- Mouse
vim.cmd("set mouse=a")

-- Relative numbers
vim.cmd("set relativenumber")

-- Timeout (for which key)
vim.api.nvim_set_option('timeoutlen', 500)

-- Case-insensitive search
vim.cmd("set ignorecase")

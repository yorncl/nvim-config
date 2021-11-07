vim.wo.number = true

-- Theme and transparency
vim.cmd("colorscheme gruvbox")
vim.cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")

-- Mouse
vim.cmd("set mouse=a")

-- Timeout (for which key)
vim.api.nvim_set_option('timeoutlen', 500)


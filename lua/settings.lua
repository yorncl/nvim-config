vim.wo.number = true

-- Colorscheme
vim.cmd('colorscheme catppuccin-mocha')

-- Encoding, useful for terminal icons and such
vim.cmd("set encoding=UTF-8")

-- Background transparency
-- vim.cmd(":hi Normal ctermbg=none guibg=none")

-- Mouse
vim.cmd("set mouse=a")

-- Relative numbers
vim.cmd("set relativenumber")

-- Timeout (for which key)
vim.api.nvim_set_option('timeoutlen', 500)

-- Case-insensitive search
vim.cmd("set ignorecase")

local group_cdpwd = vim.api.nvim_create_augroup("group_cdpwd", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
  group = group_cdpwd,
  pattern = "*",
  callback = function()
    vim.api.nvim_set_current_dir(vim.fn.expand("%:p:h"))
  end,
})

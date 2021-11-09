vim.wo.number = true

-- Theme and transparency
vim.cmd("colorscheme gruvbox")
vim.cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")

-- Mouse
vim.cmd("set mouse=a")

-- Timeout (for which key)
vim.api.nvim_set_option('timeoutlen', 500)

-- Coc
function script_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*/)")
end
vim.cmd('source' .. script_path() .. '../vimscript/coc-config.vim')

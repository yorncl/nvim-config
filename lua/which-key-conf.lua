local wk = require("which-key")

wk.register({
  s = {
	name = "Search",
    	f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    	b = { "<cmd>Telescope buffers<cr>", "Search in buffers" }, -- create a binding with label
	t = { "<cmd>Telescope live_grep<cr>", "Live grep" },
	p = { "<cmd>Telescope file_browser<cr>", "Browse file in project" }
  },
  h = { "<cmd>noh<cr>", "Remove highliting" },
  e = { ":NvimTreeToggle<CR>", "Toggle file explorer" },
  p = {
	name = "Packer",
	s = { "<cmd>PackerSync<cr>", "Sync plugins" }
  },
  S = { ":SymbolsOutline<CR>" , "Toggle symbols view" },
  n = { ":<C-u>call append(line('.'),   repeat([''], v:count1))<CR>", "Insert new line after" },
  N = { ":<C-u>call append(line('.')-1,   repeat([''], v:count1))<CR>", "Insert new line before" },
  m = { ":Mason<CR>", "Show mason's interface" },
  l = { ":LspInfo<CR>", "Show :LspInfo" },
  c = { 
	name = "Colorscheme",
	s = { ":Telescope colorscheme<CR>", "Change colorscheme" },
	l = { ":colorscheme catppuccin-latte<CR>", "catppuccin light" },
	d = { ":colorscheme catppuccin-mocha<CR>", "catppuccin dark" },
  },
  q = { f = { ":qa!<cr>", "Quit all" } },
}, { prefix = "<leader>" })


local wk = require("which-key")

wk.register({
  s = {
	name = "Search",
    	f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    	b = { "<cmd>Telescope buffers<cr>", "Search in buffers" }, -- create a binding with label
	t = { "<cmd>Telescope live_grep<cr>", "Live grep" }
  },
  h = { "<cmd>noh<cr>", "Remove highliting" },
  e = { "<Cmd>CocCommand explorer<CR>", "Toggle file explorer" },
  p = {
	name = "Packer",
	s = { "<cmd>PackerSync<cr>", "Sync plugins" }
  },
}, { prefix = "<leader>" })


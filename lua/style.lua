vim.g.loaded = 1
vim.g.netrwPlugin = 1

-- nvim-web-devicons
require'nvim-web-devicons'.setup()


-- nvim-tree
require("nvim-tree").setup({
  open_on_setup = true,
  git = {
    enable = true,
    ignore = false
  },
})

vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>") 


-- airline
vim.cmd("runtime airline.vim")

-- Theme
vim.cmd("colorscheme onedarkpro")


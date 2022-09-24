vim.g.loaded = 1
vim.g.netrwPlugin = 1

require'nvim-web-devicons'.setup({
 -- default = true;
})

require("nvim-tree").setup({
  open_on_setup = true,
  git = {
    enable = true,
    ignore = false
  },
})
  

vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>") 

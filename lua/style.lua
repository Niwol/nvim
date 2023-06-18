vim.g.loaded = 1
vim.g.netrwPlugin = 1

-- nvim-web-devicons
require'nvim-web-devicons'.setup()


-- nvim-tree
require("nvim-tree").setup({
  git = {
    enable = true,
    ignore = false
  },
})

vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>") 


-- airline
--vim.cmd("runtime airline.vim")

require('lualine').get_config()
require('lualine').setup()
require('lualine').refresh({
  scope = 'tabpage',  -- scope of refresh all/tabpage/window
  place = { 'statusline', 'winbar', 'tabline' },  -- lualine segment ro refresh.
})
require('lualine').hide({unhide=true})

-- Theme
-- vim.cmd("colorscheme onedark")
vim.cmd("colorscheme moonfly")


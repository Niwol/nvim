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

require('lualine').setup{
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },

    tabline = {
        lualine_a = {'filename', 'buffers'}
    },

    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

-- Theme
-- vim.cmd("colorscheme onedark")
vim.cmd("colorscheme moonfly")


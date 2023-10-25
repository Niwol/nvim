-- nvim-tree
vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")


-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {remap = false})
vim.keymap.set("n", "<leader>ct", ":terminal<CR>", {remap = false})
vim.keymap.set("n", "<leader>t", ":buffer term<CR>", {remap = false})


-- lsp mappings
-- Filetype specific mappings are deifned in lua/lsp.lua

-- cmp mappings
-- Autocomplete specific mappings are defined in lua/cmp_config.lua

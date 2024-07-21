-- nvim-tree
vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")

local api = require("nvim-tree.api")
vim.keymap.set('n', '+', api.tree.change_root_to_node, {})


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


-- luasnip
local ls = require("luasnip")
vim.keymap.set({"i", "s"}, "<c-k>", function ()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, {silent = true})

vim.keymap.set({"i", "s"}, "<c-j>", function ()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, {silent = true})

-- lsp mappings
-- Filetype specific mappings are deifned in lua/lsp.lua

-- cmp mappings
-- Autocomplete specific mappings are defined in lua/cmp_config.lua

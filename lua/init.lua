
require("style")
require("cmp_config")
require("lsp")
require("tree_sitter")
require("telescope_conf")


-- Commons

require("nvim-autopairs").setup()
-- require("minimap").setup()



-- Remaps

vim.keymap.set("n", "<leader>:", "<cmd>vertical resize +10<CR>") 
vim.keymap.set("n", "<leader>;", "<cmd>vertical resize -10<CR>") 


local basic_keybinds = function()
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer = 0})
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})

  vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer = 0})
  vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer = 0})
  vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>", {buffer = 0})

  vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer = 0})

  vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {buffer = 0})
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())


-- Python

require'lspconfig'.pyright.setup{
  capabilities = capabilities,

  on_attach = function()
    basic_keybinds()
  end,
}


-- c_cpp

require'lspconfig'.clangd.setup{
  capabilities = capabilities,

  cmd = {"clangd"},
  filetypes = {"c", "cpp", "objc", "objcpp", "cuda", "proto"},

  on_attach = function()
    basic_keybinds()
  end,
}

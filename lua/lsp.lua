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


local capabilities = require('cmp_nvim_lsp').default_capabilities()


-- Rust
--require("rust-tools").setup {
--    server = {
--        on_attach = function()
--            basic_keybinds()
--            vim.keymap.set("n", "K", "<cmd>RustHoverAction<CR>", {buffer = 0})
--            vim.keymap.set("n", "<leader>w", "<cmd>!cargo-fmt<CR>", {buffer = 0})
--        end
--    }
--}
--
--require("rust-tools").hover_range.hover_range()

require'lspconfig'.rust_analyzer.setup({
    capabilities = capabilities,

    on_attach = function()
        basic_keybinds()
        vim.keymap.set("n", "<leader>w", "<cmd>!cargo-fmt<CR>", {buffer = 0})
    end
})


-- Python
require'lspconfig'.pyright.setup{
    capabilities = capabilities,

    on_attach = function()
        basic_keybinds()
    end
}


-- c_cpp
require'lspconfig'.clangd.setup{
    capabilities = capabilities,

    cmd = {"clangd"},
    filetypes = {"c", "cpp", "objc", "objcpp", "cuda", "proto"},

    on_attach = function()
        basic_keybinds()
    end
}

-- lua
require("lspconfig").lua_ls.setup {}

-- Debugging
--require("dapui").setup()
--require("nvim-dap-projects").search_project_config()
--require("nvim-dap-virtual-text").setup()

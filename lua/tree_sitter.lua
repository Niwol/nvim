require("nvim-treesitter.configs").setup({
  ensure_installed = {"c", "cpp", "python", "rust"},

  highlight = {
    enable = true,
  },
})

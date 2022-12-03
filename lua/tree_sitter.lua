require("nvim-treesitter.configs").setup({
  ensure_installed = {"c", "cpp", "glsl", "python", "rust"},

  highlight = {
    enable = true,
  },
})

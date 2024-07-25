return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "vim",
        "vimdoc",
        "bash",
        "c",
        "cpp",
        "javascript",
        "json",
        "lua",
        "python",
        "typescript",
        "tsx",
        "css",
        "rust",
        "markdown",
        "markdown_inline",
      },
      indent = { enable = true },
      highlight = { enable = true },
    }
  end,
}


return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", --format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "EthanJWright/vs-tasks.nvim",
    dependencies = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "markdown",
        "typescript",
        "angular",
        "javascript",
        "json",
        "dart",
        "regex",
        "python",
        "rust",
        "toml",
        "yaml",
        "xml",
      },
    },
  },
}

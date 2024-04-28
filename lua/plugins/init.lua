--NOTE: Main init file
--WARN: FUCK
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
    event = "LspAttach",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nacro90/numb.nvim",
    event = "VeryLazy",
    config = function()
      require("numb").setup()
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "clangd",
      },
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
        "java",
      },
    },
  },
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   opts = {
  --     default = {
  --       file_ignore_pattern = { ".git", "venv" },
  --     },
  --     extension_list = { "flutter" },
  --   },
  -- },
}

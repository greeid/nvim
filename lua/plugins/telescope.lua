-- NOTE: Fuzzy Finder
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      enabled = function()
        return vim.fn.executable "make" == 1
      end,
    },
  },
  opts = function(_, opts)
    opts.defaults.file_ignore_patterns = { "node_modules", ".git", "venv" }
    opts.extensions_list = { "flutter", "themes", "terms", "fzf", "harpoon" }

    return opts
  end,
}

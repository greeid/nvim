---@type ChadrcConfig

local M = {}

M.ui = {
  theme = "tokyodark",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  telescope = { style = "bordered" },
  statusline = {
    theme = "vscode_colored",
    separator_style = "round",
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cursor", "cwd" },
  },

  nvdash = {
    load_on_startup = true,
  },
}

return M

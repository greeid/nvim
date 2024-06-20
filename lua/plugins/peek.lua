---@type NvPluginSpec
return {
  "toppair/peek.nvim",
  build = "deno task --quiet build:fast",
  cmd = "PeekOpen",
  config = function()
    require("peek").setup()
  end,
}

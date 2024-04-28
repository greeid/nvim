---@type NvPluginSpec
return {
  "ThePrimeagen/harpoon",
  event = "BufReadPre",
  config = function()
    require("harpoon").setup()
  end,
}

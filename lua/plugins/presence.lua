---@type NvPluginSpec
return {
		"andweeb/presence.nvim",
		event = "VeryLazy",
		config = function()
			require("presence").setup({
				-- log_level = "debug",
				main_image = "file",
				-- enable_line_number = true,
			})
		end,
	}

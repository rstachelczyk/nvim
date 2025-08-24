return {
	"folke/tokyonight.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	lazy = false,
	config = function()
		vim.cmd("colorscheme tokyonight")
	end,
	opts = { style = "storm", transparent = true },
}

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	lazy = false,
-- 	config = function()
-- 		vim.cmd("colorscheme catppuccin")
-- 	end,
-- 	opts = { transparent = true },
-- }

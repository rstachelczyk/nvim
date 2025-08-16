return {
	"folke/tokyonight.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	lazy = false,
	config = function()
		vim.cmd("colorscheme tokyonight")
	end,
	opts = { style = "storm", transparent = true },
}

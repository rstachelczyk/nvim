return {
	"epwalsh/obsidian.nvim",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("obsidian").setup({
			workspaces = {
				{
					name = "personal",
					path = "~/vaults",
				},
			},
			daily_notes = {
				folder = "dailies",
				date_format = "%Y-%m-%d",
			},
			notes_subdir = "DevNotes",
			new_notes_location = "notes_subdir",
			preferred_link_style = "markdown",
			completion = {
				nvim_cmp = true,
				min_chars = 2,
			},
			mappings = {
				-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
				-- ["gf"] = {
				-- 	action = function()
				-- 		return require("obsidian").util.gf_passthrough()
				-- 	end,
				-- 	opts = { noremap = false, expr = true, buffer = true },
				-- },
				-- Toggle check-boxes.
				["<leader>ch"] = {
					action = function()
						return require("obsidian").util.toggle_checkbox()
					end,
					opts = { buffer = true },
				},
			},
		})

		vim.keymap.set("n", "gf", function()
			if require("obsidian").util.cursor_on_markdown_link() then
				return "<cmd>ObsidianFollowLink<CR>"
			else
				return "gf"
			end
		end, { noremap = false, expr = true })
	end,
}

return {
  "obsidian-nvim/obsidian.nvim",
  lazy = true,
  version = "*",
  ft = { "markdown", "md" },
  opts = {
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
      nvim_cmp = false,
      blink = true,
      min_chars = 2,
    },
    follow_img_func = function(img)
      vim.ui.open(img)
    end,
    follow_url_func = function(url)
      vim.ui.open(url)
    end,
    -- mappings = {
    -- 	-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
    -- 	["gf"] = {
    -- 		action = function()
    -- 			return require("obsidian").util.gf_passthrough()
    -- 		end,
    -- 		opts = { noremap = false, expr = true, buffer = true },
    -- 	},
    -- 	-- Toggle check-boxes.
    -- 	["<leader>ch"] = {
    -- 		action = function()
    -- 			return require("obsidian").util.toggle_checkbox()
    -- 		end,
    -- 		opts = { buffer = true },
    -- 	},
    -- },
  },
}

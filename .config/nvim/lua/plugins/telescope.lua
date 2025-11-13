-- return {
-- 	"nvim-telescope/telescope.nvim",
-- 	branch = "0.1.x",
-- 	dependencies = { "nvim-lua/plenary.nvim" },
-- 	config = function()
-- 		local builtin = require("telescope.builtin")
-- 		vim.keymap.set("n", "<leader>p", builtin.find_files, {})
-- 		vim.keymap.set("n", "<leader>gp", builtin.git_files, {})
-- 		vim.keymap.set("n", "<leader>f", builtin.live_grep, {})
-- 		vim.keymap.set("n", "<leader>fw", function()
-- 			local word = vim.fn.expand("<cword>")
-- 			builtin.grep_string({ search = word })
-- 		end)
-- 		vim.keymap.set("n", "<leader>fW", function()
-- 			local word = vim.fn.expand("<cWORD>")
-- 			builtin.grep_string({ search = word })
-- 		end)
-- 		vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
-- 		vim.keymap.set("n", "<leader>pp", function()
-- 			builtin.find_files({ cwd = require("lazy.core.config").options.root })
-- 		end)
-- 	end,
-- }

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },

	-- You can pass default setup options here instead of config()
	opts = {
		defaults = {
			layout_config = {
				prompt_position = "top",
			},
			sorting_strategy = "ascending",
		},
	},

	-- Keymaps are now declared here
	keys = function()
		local builtin = require("telescope.builtin")
		return {
			{ "<leader>p", builtin.find_files, desc = "Find Files" },
			{ "<leader>gp", builtin.git_files, desc = "Git Files" },
			{ "<leader>f", builtin.live_grep, desc = "Live Grep" },
			{
				"<leader>fw",
				function()
					builtin.grep_string({ search = vim.fn.expand("<cword>") })
				end,
				desc = "Find word under cursor",
			},
			{
				"<leader>fW",
				function()
					builtin.grep_string({ search = vim.fn.expand("<cWORD>") })
				end,
				desc = "Find WORD under cursor",
			},
			{ "<leader>vh", builtin.help_tags, desc = "Help Tags" },
			{
				"<leader>cp",
				function()
					builtin.find_files({ vim.fn.stdpath("config") })
				end,
				desc = "Find Plugin Files",
			},
		}
	end,
}

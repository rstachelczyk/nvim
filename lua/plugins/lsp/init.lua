return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"j-hui/fidget.nvim", -- Useful status updates for LSP.

		-- `neodev` configures Lua LSP for your Neovim config, runtime and plugins
		-- used for completion, annotations and signatures of Neovim apis
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		require("fidget").setup({})
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls", -- lua
				"ruby_lsp", --ruby
				-- "gopls", -- go
				--"tsserver", -- typescript
				--"eslint", -- javascript
				--"dockerls", -- docker
				--"docker_compose_language_service", -- docker compose
			},
			handlers = {
				function(server_name)
					local capabilities = require("cmp_nvim_lsp").default_capabilities()
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
					vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
					vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
					vim.keymap.set("n", "<leader>=", vim.lsp.buf.format, {})
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
					vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {})
				end,
				-- Next, you can provide targeted overrides for specific servers.
				["lua_ls"] = require("plugins.lsp.lua_ls"),
				["tailwindcss"] = require("plugins.lsp.tailwindcss"),
			},
		})
	end,
}

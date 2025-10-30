return {
	{
		"neovim/nvim-lspconfig",
	},
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{ "j-hui/fidget.nvim", opts = {} },
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"mason-org/mason.nvim",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"ruby_lsp",
				"cssls",
				"html",
				"jsonls",
				"eslint",
				"tailwindcss",
				-- "prettierd", -- or the equivalent for Prettier
				"gopls", -- go
				--"tsserver", -- typescript
				--"eslint", -- javascript
				--"dockerls", -- docker
				--"docker_compose_language_service", -- docker compose
			},
		},
	},
}

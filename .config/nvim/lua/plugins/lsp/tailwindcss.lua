return function()
	local lspconfig = require("lspconfig")
	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	lspconfig.tailwindcss.setup({
		capabilities = capabilities,
		root_dir = lspconfig.util.root_pattern(
			"tailwind.config.js",
			"tailwind.config.ts",
			"postcss.config.js",
			"package.json"
		),
		filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
	})
end

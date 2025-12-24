return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- required ruby_lsp and rubocop to be a part of the bundle for each app.
      -- Can be installed via `gem install ruby-lsp rubocop`
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { vim.fn.expand("~/.local/share/mise/shims/ruby-lsp") },
          -- cmd = { "mise", "x", "--", "ruby-lsp" },
        },
        rubocop = {
          mason = false,
          cmd = { vim.fn.expand("~/.local/share/mise/shims/rubocop"), "--lsp" },
          -- cmd = { "mise", "x", "--", "ruby-lsp" },
        },
      },
    },
  },
}

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

      codelens = {
        enabled = true,
      },
      setup = {
        ruby_lsp = function(_, _)
          vim.lsp.commands["rubyLsp.openFile"] = function(cmd, _)
            local uri_frag = cmd.arguments[1][1]
            local uri, line = uri_frag:match("^(.+)#L(%d+)$")
            if not uri then
              uri = uri_frag
            end
            local bufnr = vim.uri_to_bufnr(uri)
            vim.fn.bufload(bufnr)
            vim.api.nvim_set_option_value("buflisted", true, { buf = bufnr })
            vim.api.nvim_set_current_buf(bufnr)

            vim.api.nvim_win_set_cursor(0, { tonumber(line) or 1, 0 })
          end
        end,
      },
    },
  },
}

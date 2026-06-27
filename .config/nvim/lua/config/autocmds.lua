-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "dart" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- enable color highlighting inline
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client ~= nil and client:supports_method("textDocument/documentColor") then
      vim.lsp.document_color.enable(true, nil, { style = "virtual" })
    end
  end,
})

-- open help ui in vertical split instead of horizontal
vim.api.nvim_create_autocmd("Filetype", {
  pattern = "help",
  command = "wincmd L",
})

-- auto resize splits when the window is resized
vim.api.nvim_create_autocmd("VimResized", {
  command = "wincmd =",
})

-- no auto continue comment on new lines
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("no_auto_comment", {}),
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- Disable RuboCop LSP diagnostics for third-party gems and Bundler paths
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*/vendor/bundle/*", "*/.rbenv/*", "*/.rvm/*", "*/.mise/*", "*/.bundle/*" },
  callback = function()
    vim.diagnostic.disable(0)
  end,
})

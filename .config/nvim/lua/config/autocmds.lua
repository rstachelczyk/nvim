-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "dart" },
  callback = function()
    vim.b.autoformat = false
  end,
})

--TODO: Add this / see if lazyvim handles this once v0.12 is released
-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function(args)
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--
--     if client ~= nil and client:supports_method("textDocument/documentColor") then
--       vim.lsp.document_color.enable(true, args.buf)
--     end
--   end,
-- })

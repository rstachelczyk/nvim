return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("flutter-tools").setup({
      debugger = {
        enabled = true,
      },
    })
    vim.keymap.set("n", "<leader>fr", "<cmd>FlutterReload<CR>", {})
    vim.keymap.set("n", "<leader>fR", "<cmd>FlutterRestart<CR>", {})
  end,
}

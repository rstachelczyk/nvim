return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        -- Show hidden files by default
        hide_dotfiles = false,
      },
    },
  },
  keys = {
    { "<leader>e", false },
    { "<leader>jf", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
  },
}

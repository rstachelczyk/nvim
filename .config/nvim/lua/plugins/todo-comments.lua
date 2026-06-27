return {
  "folke/todo-comments.nvim",
  keys = {

    { "<leader>st", false },
    { "<leader>sT", false },
    {
      "<leader>pt",
      function()
        Snacks.picker.todo_comments()
      end,
      desc = "Todo",
    },
    {
      "<leader>pT",
      function()
        Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
      end,
      desc = "Todo/Fix/Fixme",
    },
  },
}
-- TODO: FIx me

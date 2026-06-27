return {
  "folke/todo-comments.nvim",
  -- stylua: ignore
  keys = {

    { "<leader>st", false },
    { "<leader>sT", false },
    {
      "<leader>pt", function()
        Snacks.picker.todo_comments() ---@diagnostic disable-line: undefined-field
      end, desc = "Todo",
    },
    {
      "<leader>pT", function()
        Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } }) ---@diagnostic disable-line: undefined-field
      end, desc = "Todo/Fix/Fixme",
    },
  },
}

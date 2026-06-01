return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      per_filetype = {
        sql = { "snippets", "dadbod", "buffer" },
      },
      -- add vim-dadbod-completion to your completion providers
      providers = {
        dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
      },
    },
  },
}

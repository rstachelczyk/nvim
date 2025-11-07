return {
  "folke/snacks.nvim",
  opts = {
    picker = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          {
            icon = " ",
            key = "p",
            desc = "Find File",
            action = ":lua Snacks.dashboard.pick('files')",
          },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          {
            icon = " ",
            key = "f",
            desc = "Find Text",
            action = ":lua Snacks.dashboard.pick('live_grep')",
          },
          {
            icon = " ",
            key = "r",
            desc = "Recent Files",
            action = ":lua Snacks.dashboard.pick('oldfiles')",
          },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          {
            icon = "󰒲 ",
            key = "L",
            desc = "Lazy",
            action = ":Lazy",
            enabled = package.loaded.lazy ~= nil,
          },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "<leader>,",  false},
    { "<leader>/",  false},
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader><space>", false},
    { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
    -- find
    { "<leader>fb", false},
    { "<leader>fB",  false},
    { "<leader>fc", false},
    { "<leader>ff", false},
    { "<leader>fg", false},
    { "<leader>fF", false},
    { "<leader>fr", false},
    { "<leader>fR", false },
    { "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },
    { "<leader>pc", LazyVim.pick.config_files(), desc = "Find Config File" },
    { "<leader>p", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { "<leader>pg", function() Snacks.picker.git_files() end, desc = "Find Files (git-files)" },
    { "<leader>pr", LazyVim.pick("oldfiles"), desc = "Recent" },
    { "<leader>pp", function() Snacks.picker.projects() end, desc = "Projects" },
    -- Grep
    { "<leader>sb", false},
    { "<leader>sB", false},
    { "<leader>sg", false},
    { "<leader>sG", false},
    { "<leader>sp", false},
    { "<leader>sw", false},
    { "<leader>sW", false},
    { "<leader>f", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>F", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    { "<leader>fp", function() Snacks.picker.lazy() end, desc = "Search for Plugin Spec" },
    { "<leader>fw", LazyVim.pick("grep_word"), desc = "Visual selection or word (Root Dir)", mode = { "n", "x" } },
    -- ui
    { "<leader>uC", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
  },
}

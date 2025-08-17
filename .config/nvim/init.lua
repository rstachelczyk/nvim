vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Setting options ]]
require("options")

-- [[ Basic Keymaps ]]
require("keymaps")

-- [[ Autocommands ]]
require("autocmds")

-- [[ Install `lazy.nvim` plugin manager ]]
require("lazy-init")

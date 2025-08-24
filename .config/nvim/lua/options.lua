-- https://neovim.io/doc/user/quickref.html#option-list
vim.opt.nu = true -- enable line numbers
vim.opt.relativenumber = false -- turn off relative line numbers

vim.opt.tabstop = 2 -- number of columns between two tab stops
vim.opt.softtabstop = 2 -- number of columns between two soft tab stops
vim.opt.shiftwidth = 2 -- number of spaces to use for (auto) indent step
vim.opt.expandtab = true -- use spaces when tab is inserted

vim.opt.smartindent = true -- smart autoindenting for c programs

vim.opt.clipboard = "unnamedplus" -- use the clipboard as the unnamed register

vim.opt.wrap = false -- don't wrap long lines

vim.opt.list = true -- show <Tab> and <EOL>
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" } -- characters for displaying in list mode

vim.opt.swapfile = false -- disable swap file for buffers
vim.opt.backup = false -- keep backup file after overwriting a file
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- where to store undo files
vim.opt.undofile = true -- save undo information in a file

vim.opt.incsearch = true -- highlight match while typing search pattern

vim.opt.termguicolors = true -- enable 24-bit RGB color in the TUI

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.opt.signcolumn = "yes" -- always show sign column to left of line numbers
vim.opt.isfname:append("@-@") -- treat @ as part of a valid filename instead of as a delimiter

vim.opt.timeoutlen = 300
vim.opt.updatetime = 200 -- how quickly idle events happen: diagnostics, hover tooltips, linting, etc

vim.opt.colorcolumn = "100" -- display color column at line 100

vim.opt.conceallevel = 2 --- Hide * markup for bold and italic, but not markers with substitutions

-- change icons when folding
vim.opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}

-- vim.o.winborder = "rounded"

vim.diagnostic.config({
	virtual_text = true,
	underline = true,
})

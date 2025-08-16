vim.keymap.set("i", "jj", "<Esc>")

vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>jf", "<cmd>Neotree toggle<CR>")

vim.keymap.set("n", "J", "mzJ`z")

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-----------------------------------------------------
-- Screen movements keep cursor near center of screen
-----------------------------------------------------
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "<c-f>", "<c-f>zz")
vim.keymap.set("n", "<c-b>", "<c-b>zz")

-------------------------------------------
-- Copy/Paste/Delete Behavior Modifications
-------------------------------------------

------
-- c
------

-- Normal change does not save values
vim.keymap.set("n", "c", [["_c]])

-- Special change saves values
vim.keymap.set("n", "<leader>c", "c")

-- 'Change to end of line' does not save values
vim.keymap.set("n", "C", [["_C]])

-- Special 'change to end of line' saves values
vim.keymap.set("n", "<leader>C", "C")

-- Normal visual change does not save values
vim.keymap.set("v", "c", [["_c]])

-- Special visual change saves values (like 'cut')
vim.keymap.set("v", "<leader>c", "c")

------
-- d
------

-- Normal delete does not save values
vim.keymap.set("n", "d", [["_d]])

-- Special delete saves values
vim.keymap.set("n", "<leader>d", "d")

-- Delete to end of line does not save values
vim.keymap.set("n", "D", [["_D]])

-- Special 'delete to end of line' saves values
vim.keymap.set("n", "<leader>D", "D")

-- Normal visual delete does not save values
vim.keymap.set("v", "d", [["_d]])

-- Special visual delete saves values (like 'cut')
vim.keymap.set("v", "<leader>d", "d")

------
-- p
------

-- Normal put does not save highlighted values
vim.keymap.set("x", "p", [["_dP]])

-- Special put saves highlight to buffer
vim.keymap.set("x", "<leader>p", "p")

------
-- x
------

-- Normal character delete does not save values
vim.keymap.set("n", "x", [["_x"]])

-- Diagnostic keymaps
-------------
-- LSP Remaps
-------------
vim.keymap.set("n", "<leader>ne", vim.diagnostic.goto_next, { desc = "Go to [N]ext [E]rror message" })
vim.keymap.set("n", "<leader>pe", vim.diagnostic.goto_prev, { desc = "Go to [P]revious [E]rror message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Search notes vault
vim.keymap.set(
	"n",
	"<leader>ns",
	':Telescope live_grep search_dirs={"/Users/rstachelczyk/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/DevNotes"}<CR>'
)
vim.keymap.set(
	"n",
	"<leader>np",
	':Telescope find_files search_dirs={"/Users/rstachelczyk/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/DevNotes"}<CR>'
)

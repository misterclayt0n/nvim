local keymap = vim.keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
-- mister
keymap.set("n", "J", "mzJ`z")

-- moving lines chief
keymap.set("n", "<A-l>", ">>")
keymap.set("n", "<A-h>", "<<")
keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- open explorer
-- vim.keymap.set("n", "<leader>ff", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>ff", vim.cmd.Ex)

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)
-- better navigation
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- best remaps ever
keymap.set("n", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')
keymap.set("n", "y", '"*y')

-- redo
keymap.set("n", "U", "<cmd>redo<CR>")

-- visual mode
keymap.set("v", "<A-l>", ">gv")
keymap.set("v", "<A-h>", "<gv")
keymap.set("v", "<leader>p", '"_dP')
keymap.set("v", "<leader>y", '"+y')

-- buffer navigation
keymap.set("n", "<leader>bp", vim.cmd.bprevious)
keymap.set("n", "<leader>bn", vim.cmd.bnext)
keymap.set("n", "<leader>bd", vim.cmd.bdelete)

-- windows
keymap.set("n", "<leader>w|", vim.cmd.vsplit)
keymap.set("n", "<leader>w-", vim.cmd.split)
keymap.set("n", "<leader>wd", vim.cmd.close)

-- focus on window
keymap.set("n", "<leader>wh", "<C-w>h")
keymap.set("n", "<leader>wj", "<C-w>j")
keymap.set("n", "<leader>wk", "<C-w>k")
keymap.set("n", "<leader>wl", "<C-w>l")

-- neogit
keymap.set("n", "<leader>gg", vim.cmd.Neogit)

-- shell command
keymap.set("n", "<leader>e", ":!")

-- compile command
keymap.set("n", "<leader>cc", ":Compile<CR>")
keymap.set("n", "<leader>cC", ":Recompile<CR>")

-- rezise windows
keymap.set("n", "<C-Up>", "<C-w>5+")
keymap.set("n", "<C-Down>", "<C-w>5-")
keymap.set("n", "<C-Left>", "<C-w>5<")
keymap.set("n", "<C-Right>", "<C-w>5>")

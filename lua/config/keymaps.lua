local map = vim.keymap.set
-- leader key to spc
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quickies
map("n", "Q", ":q!<Return>")
-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Make things easy
map("n", "L", "$")
map("n", "H", "^")
map("n", "k", "gk")
map("n", "j", "gj")

-- Making splits
map("n", "<leader>h", "<C-w>v", { desc = "Make vertical split" })   -- vertical
map("n", "<leader>v", "<C-w>s", { desc = "Make horizontal split" }) -- horizontal

-- Quick jumping between splits
map("n", "<C-h>", "<C-w>h", { desc = "Jump to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Jump to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Jump to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Jump to right window" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Indenting in visual mode
map("v", ">", ">gv", { desc = "Indent right" })
map("v", "<", "<gv", { desc = "Indent left" })

-- Plugins
map("n", "<leader>l", ":Lazy<Return>", { desc = "Launch Lazy" })
map("n", "<leader>m", ":Mason<Return>", { desc = "Launch Mason" })
map("n", "<leader>n", ":Neotree toggle<Return>", { desc = "Toggle neo-tree" })

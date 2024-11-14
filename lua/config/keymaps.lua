local keymap = vim.keymap
-- set leader key to spc
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quickies
keymap.set("n", "Q", ":q!<Return>")

-- Make things easy
keymap.set("n", "L", "$")
keymap.set("n", "H", "^")
keymap.set("n", "k", "gk")
keymap.set("n", "j", "gj")

-- Making splits
keymap.set("n", "<leader>h", "<C-w>v", { desc = "Make vertical split" }) -- vertical
keymap.set("n", "<leader>v", "<C-w>s", { desc = "Make horizontal split" }) -- horizontal

-- Quick jumping between splits
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Indenting in visual mode
keymap.set("v", "<Tab>", ">gv", { desc = "Indent right" })
keymap.set("v", "<S-Tab>", "<gv", { desc = "Indent left" })

-- Plugins
keymap.set("n", "<leader>l", ":Lazy<Return>", { desc = "Launch Lazy" })
keymap.set("n", "<leader>m", ":Mason<Return>", { desc = "Launch Mason" })
keymap.set("n", "<leader>n", ":Neotree toggle<Return>", { desc = "Toggle neo-tree" })

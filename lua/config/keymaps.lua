local map = vim.keymap.set
-- leader key to spc
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quickies

map("n", "qq", ":q!<Return>", { desc = "Quit vim without saving changes" })

-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- Make things easy
map({ "n", "v" }, "L", "$", { silent = true, remap = true, desc = "Go to end of line" })
map({ "n", "v" }, "H", "^", { silent = true, remap = true, desc = "Go to first charcter in current line" })
map("n", "k", "gk", { silent = true, desc = "Up" })
map("n", "j", "gj", { silent = true, desc = "Down" })

-- Move Lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Making splits
map("n", "<leader>v", "<C-w>v", { desc = "Make vertical split" }) -- vertical
map("n", "<leader>h", "<C-w>s", { desc = "Make horizontal split" }) -- horizontal

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

-- tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>k", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab>o", "<cmd>tabnew<cr>", { desc = "Open New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Plugins
map("n", "<leader>l", ":Lazy<Return>", { desc = "Launch Lazy" })
map("n", "<leader>m", ":Mason<Return>", { desc = "Launch Mason" })
map("n", "<leader>e", ":Neotree toggle<Return>", { desc = "Toggle neo-tree" })

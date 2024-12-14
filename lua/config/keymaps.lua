local map = vim.keymap.set
-- leader key to spc
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quickies
map("n", "qq", ":q!<CR>", { desc = "Quit vim without saving changes" })

-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- Make things easy
map({ "n", "v", "x" }, "L", "$", { silent = true, remap = true, desc = "Go to end of line" })
map({ "n", "v", "x" }, "H", "^", { silent = true, remap = true, desc = "Go to first charcter in current line" })
map("n", "k", "gk", { silent = true, desc = "Up" })
map("n", "j", "gj", { silent = true, desc = "Down" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

-- searching
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzz")
map("n", "N", "Nzz")

-- Move Lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Making splits
map("n", "<leader>sv", "<C-w>v", { desc = "Make vertical split" })   -- vertical
map("n", "<leader>sh", "<C-w>s", { desc = "Make horizontal split" }) -- horizontal

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
map("n", "<leader>tl", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader>tk", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
map("n", "<leader>tf", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "Open New Tab" })
map("n", "<leader>tn", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader>td", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader>tp", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- comments
map("n", "<leader>/", "gcc", { desc = "Comment line", remap = true })
map("v", "<leader>/", "gc", { desc = "Comment range", remap = true })

-- Plugins
map("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Launch Lazy" })
map("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Launch Mason" })
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle neo-tree" })
map("n", "<leader>G", "<cmd>Neogit<CR>", { desc = "Launch Neogit" })

-- Telescope
map("n", "<C-f>", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope recent files" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope recent files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Telescope live grep" })
map("n", "<leader>fo", "<cmd>Telescope buffers<CR>", { desc = "Telescope find buffers" })
map("n", "<leader>ft", "<cmd>Telescope colorscheme<CR>", { desc = "Colorscheme picker" })

-- Git
map("n", "<leader>ga", "<cmd>Gitsigns stage_buffer<CR>", { desc = "Git add current file" })
map("n", "<leader>gc", "<cmd>Neogit commit<CR>", { desc = "Git commit staged" })
map("n", "<leader>gP", "<cmd>Neogit push<CR>", { desc = "Git push staged" })
map("n", "<leader>gp", "<cmd>Neogit pull<CR>", { desc = "Git pull from origin" })

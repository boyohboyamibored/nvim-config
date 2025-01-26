local map = vim.keymap.set
local opts = { silent = true, remap = true }
-- leader key to spc
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quickies
map("n", "<leader>q", ":q!<CR>", { desc = "Quit vim without saving changes" })
map("n", "<leader>x", ":w!<CR>:!chmod +x %<CR>", { desc = "Make file executable" })

-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", opts, { desc = "Save File" })
map("n", "<leader>w", ":w<CR>", { desc = "Save file" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- Make things easy
map({ "n", "v", "x" }, "L", "$", opts, { desc = "Go to end of line" })
map({ "n", "v", "x" }, "H", "^", opts, { desc = "Go to first charcter in current line" })
map("n", "k", "gk", opts, { desc = "Up" })
map("n", "j", "gj", opts, { desc = "Down" })
map("n", "<leader>y", ":%y+<CR>", { desc = "Yank whole file" })

-- paste over currently selected text without yanking it
vim.keymap.set("v", "p", '"_dp')
vim.keymap.set("v", "P", '"_dP')

-- searching
map("n", "n", "nzz", opts)
map("n", "N", "Nzz", opts)
map("n", "*", "*zz", opts)
map("n", "#", "#zz", opts)
map("n", "g*", "g*zz", opts)

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
map("n", "<leader>/", "gcc", opts, { desc = "Comment out line" })
map("v", "<leader>/", "gc", opts, { desc = "Comment out range" })

-- Plugins
map("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Launch Lazy" })
map("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Launch Mason" })
map("n", "<leader><tab>", "<cmd>Neotree toggle left<CR>", { desc = "Toggle neo-tree left" })
map("n", "<leader>e", "<cmd>Neotree toggle float<CR>", { desc = "Float neo-tree" })
map("n", "<leader>G", "<cmd>Neogit<CR>", { desc = "Launch Neogit" })

-- Telescope
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope recent files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Telescope live grep" })
map("n", "<leader>fo", "<cmd>Telescope buffers<CR>", { desc = "Telescope find buffers" })
map("n", "<leader>ft", "<cmd>Telescope colorscheme<CR>", { desc = "Colorscheme picker" })

-- Git
map("n", "<leader>ga", "<cmd>Gitsigns stage_buffer<CR>", { desc = "Git add current file" })
map("n", "<leader>gc", "<cmd>Neogit commit<CR>", { desc = "Git commit staged" })
map("n", "<leader>gP", "<cmd>Neogit push<CR>", { desc = "Git push staged" })
map("n", "<leader>gp", "<cmd>Neogit pull<CR>", { desc = "Git pull from origin" })

--  let the left and right arrows be useful: they can switch buffers
map("n", "<left>", ":bp<cr>", opts)
map("n", "<right>", ":bn<cr>", opts)

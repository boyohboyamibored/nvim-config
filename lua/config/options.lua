-- use `:h <option>` for help
local opt = vim.opt

-- Basic stuff
vim.g.mapleader = " "        -- set leader key to spc
vim.g.maplocalleader = " "   -- set leader key to spc
vim.g.loaded_netrwPlugin = 0 -- disable netrw

opt.path:append("**")
opt.clipboard = "unnamedplus"                       -- use system keyboard
opt.mouse = "a"                                     -- enable mouse
opt.completeopt = { "menu", "menuone", "noselect" } -- completion stuff

-- Tab
opt.tabstop = 4     -- number of visual spaces per tab
opt.softtabstop = 4 -- spaces in tab when editing
opt.shiftwidth = 4  -- insert 4 spaces for tabs
opt.expandtab = true

-- No swap files
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- remember undos
opt.undofile = true

-- UI config
opt.number = true
opt.relativenumber = true
opt.splitbelow = true -- split horizontal windows bottom
opt.splitright = true -- split vertical windows right
opt.showmode = false
opt.wrap = true       -- allows you to move horizontally from line to line

-- Searching
opt.incsearch = true -- search as characters are entered

-- vim.opt.hlsearch = false            -- do not highlight matches
opt.ignorecase = true -- ignore case in searches by default
opt.smartcase = true  -- but make it case sensitive if an uppercase is entered
opt.inccommand = "nosplit" -- preview incremental substitute

-- use `:h <option>` for help
local opt = vim.opt
local g = vim.g

-- Basic stuff
g.mapleader = " "                -- set leader key to spc
g.maplocalleader = " "           -- set leader key to spc
g.loaded_netrwPlugin = 0         -- disable netrw
g.markdown_recommended_style = 0 -- Fix markdown indentation settings

-- QOL
opt.termguicolors = true                            -- true color support
opt.path:append("**")
opt.clipboard = "unnamedplus"                       -- use system keyboard
opt.mouse = "a"                                     -- enable mouse
opt.completeopt = { "menu", "menuone", "noselect" } -- completion stuff
opt.confirm = true                                  -- Confirm to save changes before exiting modified buffer
-- when opening a file with a command (like :e),
-- don't suggest files like there:
vim.opt.wildignore = ".hg,.svn,*~,*.png,*.jpg,*.jpeg,*.gif,*.min.js,*.swp,*.o,vendor,dist,_site"

-- things to save with sessions (all)
-- opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

-- indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.expandtab = true -- Use spaces instead of tabs

-- No swap files
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- remember undos
opt.undofile = true
opt.undolevels = 10000

-- UI config
opt.number = true
opt.relativenumber = true
opt.splitbelow = true      -- split horizontal windows bottom
opt.splitright = true      -- split vertical windows right
opt.showmode = false
opt.wrap = true            -- enable line wrap
opt.whichwrap:append("hl") -- move to next line when on las char
opt.conceallevel = 2       -- Hide * markup for bold and italic, but not markers with substitutions
opt.cursorline = true      -- Enable highlighting of the current line
opt.spelllang = { "en" }
opt.virtualedit = "block"
vim.opt.scrolloff = 8     -- Makes sure there are always eight lines of context
vim.opt.sidescrolloff = 8 -- Makes sure there are always eight lines of context

-- Searching
opt.incsearch = true     -- search as characters are entered
opt.ignorecase = true    -- ignore case in searches by default
opt.smartcase = true     -- but make it case sensitive if an uppercase is entered
opt.inccommand = "split" -- preview incremental substitute in a window

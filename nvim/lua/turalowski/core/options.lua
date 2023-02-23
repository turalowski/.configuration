-- If you want to learn more about options, `:help options`
local opt = vim.opt

-- Options`1gg`

-- Line numbers
opt.number = true -- set numbered lines
opt.relativenumber = true -- set relative numbered lines

-- tabs & identation
opt.tabstop = 2
opt.shiftwidth = 2 -- the number of spaces inserted for each identation
opt.expandtab = true -- covnert tabs to spaces
opt.autoindent = true

-- line wrapping
opt.wrap = false -- display lines as one long line

-- search settings
opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true -- smart case

-- cursor line
opt.cursorline = true -- highlight the current line

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

-- split windows
opt.splitbelow = true -- force all horizontal splits to go bellow instead of above
opt.splitright = true -- force all vertical splits to go to the right of current window

-- Specify selection
opt.iskeyword:append "-" -- Vim will realize words with - as a single one


opt.backup = false -- creates a backup file
opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
opt.completeopt = { "menuone", "noselect" } -- for cmp ??
opt.conceallevel = 0 -- `` is visible in markdown files
opt.fileencoding = "utf-8" -- if you don't know what is it, close the file.
opt.hlsearch = true -- highlight all matches on previous search pattern
opt.mouse = "a" -- allow the mouse to be used in nvim
opt.pumheight = 10 -- pop up menu hight
opt.showmode = false -- i use status bar so I don't need to see --  INSERT --
opt.showtabline = 2 -- always show tabs
opt.smartindent = true -- make indenting smart
opt.swapfile = false -- creates a swapfile
opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in ms)
opt.undofile = true -- enable persistent undo
opt.updatetime = 300 -- faster completion
opt.writebackup = false -- ?
opt.numberwidth = 4 -- set number column width to 2 (default 4)
opt.scrolloff = 8 -- set scroll close to bottom
opt.sidescrolloff = 8 -- set scroll close to right
opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
opt.shortmess:append "c" -- Avoid hit enter proms
opt.whichwrap:append "<,>,[,],h,l" -- Allowed keys to move the cursor

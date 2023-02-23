local opts = { noremap = true, silent = true }
--Remap space as leader key
local keymap = vim.keymap
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- General keymaps
-- Copy file name and line number properly
keymap.set("n", "<leader>li", '<Cmd>let @+=expand("%")..":L"..line(".")<CR>')
-- Exit from INSERT mode easily
keymap.set("i", "jk", "<ESC>")
-- Clear highlight easily
keymap.set("n", "<leader>nh", ":nohl<CR>")
-- Delete character will not copy character to register
keymap.set("n", "x", '"_x')
-- Increase number
keymap.set("n", "<leader>+", "<C-a>")
-- Decrease number
keymap.set("n", "<leader>-", "<C-x>")
-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')
-- Replace visual
keymap.set("n", "<leader>rv", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Move line to up
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- live moving to up
-- Move line to down
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- live moving to down

-- Modify screen navigations to keep the cursor in the middle
keymap.set("n", "<C-d>", "<C-d>zz") -- keep cursor in the middle
keymap.set("n", "<C-u>", "<C-u>zz") -- keep cursor in the middle
keymap.set("n", "n", "nzzzv") -- keep cursor in the middle
keymap.set("n", "N", "Nzzzv") -- keep cursor in the middle

-- Split shortcuts
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- Close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- Tab shortcuts
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- File explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
-- keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
-- keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<CR>")
-- keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
-- keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
-- keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- telescope git
-- keymap.set("n", "<leader>fgf", "<cmd>Telescope git_files<CR>")
-- keymap.set("n", "<leader>fgb", "<cmd>Telescope git_branches<CR>")
-- keymap.set("n", "<leader>fgs", "<cmd>Telescope git_stash<CR>")

-- GitGutter
-- keymap.set("n", "[h", "<cmd>GitGutterPrevHunk<CR>", opts)
-- keymap.set("n", "[h", "<cmd>GitGutterNextHunk<CR>", opts)
--   keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
--   keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
--   keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
--   keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
--   keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
--   keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
--   keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
--   keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
--   keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
--   keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
--   keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
--   keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--[[
-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
--]]

-- Disable arrow keys
keymap.set("n", "<Up>", "<Nop>", opts)
keymap.set("n", "<Down>", "<Nop>", opts)
keymap.set("n", "<Left>", "<Nop>", opts)
keymap.set("n", "<Right>", "<Nop>", opts)

keymap.set("v", "<Up>", "<Nop>", opts)
keymap.set("v", "<Up>", "<Nop>", opts)
keymap.set("v", "<Up>", "<Nop>", opts)
keymap.set("v", "<Down>", "<Nop>", opts)

keymap.set("i", "<Left>", "<Nop>", opts)
keymap.set("i", "<Right>", "<Nop>", opts)
keymap.set("i", "<Down>", "<Nop>", opts)
keymap.set("i", "<Left>", "<Nop>", opts)

keymap.set("x", "<Right>", "<Nop>", opts)
keymap.set("x", "<Down>", "<Nop>", opts)
keymap.set("x", "<Left>", "<Nop>", opts)
keymap.set("x", "<Right>", "<Nop>", opts)

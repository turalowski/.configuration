-- Plugin installer
require("turalowski.plugins-setup")
-- Core
require("turalowski.core.options")
require("turalowski.core.keymaps")
require("turalowski.core.colorscheme")
-- Plugins
require("turalowski.plugins.comment")
require("turalowski.plugins.nvim-tree")
require("turalowski.plugins.status-line")
require("turalowski.plugins.telescope")
require("turalowski.plugins.nvim-cmp")
require("turalowski.plugins.autopairs")
require("turalowski.plugins.treesitter")

--Git
require("turalowski.plugins.gitsigns")
require("turalowski.plugins.gitgutter")

require("turalowski.plugins.fugitive")
require("turalowski.plugins.colorizer")
-- LSP
require("turalowski.plugins.lsp.mason")
require("turalowski.plugins.lsp.lspconfig")
require("turalowski.plugins.lsp.null-ls")
require("turalowski.plugins.lsp.lspsaga")
-- Bufferline
require("turalowski.plugins.bufferline")
-- Quick navigation
-- require("turalowski.plugins.harpoon")
-- Undo tree
require("turalowski.plugins.undo-tree")
-- animation
require("turalowski.plugins.cellular-automaton")
require("turalowski.plugins.transparent")

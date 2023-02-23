local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end
local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	return
end

local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
	return
end

-- Load friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
		["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(), -- close completion window
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
	}),
	sources = cmp.config.sources({
		{ name = "cmp_tabnine" }, -- tabnine
		{ name = "nvim_lsp" }, -- lsp
		{ name = "luasnip" }, -- snippets
		{ name = "buffer" }, -- text within current buffer
		{ name = "path" }, -- file system paths
	}),
	formatting = {
		format = lspkind.cmp_format({
			maxwidth = 50,
			ellipsis_char = "...",
			before = function(entry, vim_item)
				local menu_icon = {
					cmp_tabnine = "TN",
					nvim_lsp = "LSP",
					luasnip = "SNIP",
					buffer = "BUF",
					path = "PATH",
				}
				vim_item.menu = menu_icon[entry.source.name]
				return vim_item
			end,
		}),
	},
})

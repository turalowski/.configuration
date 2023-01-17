local mason_setup, mason = pcall(require, "mason")
if not mason_setup then
	return
end

local lspconfig_setup, lspconfig = pcall(require, "mason-lspconfig")
if not lspconfig_setup then
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup()

lspconfig.setup({
	ensure_installed = {
		"tsserver",
		"html",
		"pyright",
		"cssls",
		"sumneko_lua",
		"eslint",
		"glint",
	},
})

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"eslint_d",
		"black",
	},
})

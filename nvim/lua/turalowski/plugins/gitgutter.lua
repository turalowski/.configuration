local status, gitgutter = pcall(require, "vim-gitgutter")
if not status then
	return
end

gitgutter.setup({ keymaps = {} })

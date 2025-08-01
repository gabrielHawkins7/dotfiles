require("config.lazy")
require("config.keymap")
require("config.options")
require("config.lsp")
vim.cmd("colorscheme nightfox")
vim.cmd("PencilSoft")

local is_wsl = vim.fn.has("wsl") == 1
local opt = vim.opt
local g = vim.g
if is_wsl then
	-- This is NeoVim's recommended way to solve clipboard sharing if you use WSL
	-- See: https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
	g.clipboard = {
		name = "wsl-clip",
		copy = {
			["+"] = "clip.exe",
			["*"] = "clip.exe",
		},
		paste = {
			["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
	}
end

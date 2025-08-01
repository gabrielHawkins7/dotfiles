return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {},
		automatic_installation = true,
		handlers = {
			function(name)
				vim.lsp.enable(name)
			end,
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"saghen/blink.cmp",
		{ "j-hui/fidget.nvim", opts = {} },
		{ "neovim/nvim-lspconfig" },
	},
}

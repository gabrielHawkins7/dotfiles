return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "harper_ls" },
		handlers = {
			function(name)
				vim.lsp.enable(name)
			end,
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}

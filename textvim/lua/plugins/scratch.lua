return {
	{
		"LintaoAmons/scratch.nvim",
		config = function()
			require("scratch").setup({
				filetypes = { "markdown" },
				use_telescope = true,
				file_picker = "telescope",
			})
		end,
	},
}

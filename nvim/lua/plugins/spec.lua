return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		opts = {},
	},

	{
		"akinsho/bufferline.nvim",
		opts = {
			options = {
				themable = true,
				offsets = {
					{ filetype = "NvimTree", highlight = "NvimTreeNormal" },
				},
			},
		},
		dependencies = "nvim-tree/nvim-web-devicons",
	},
}

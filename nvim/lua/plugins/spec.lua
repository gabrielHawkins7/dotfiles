return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		opts = {
			filters = {
				dotfiles = true,
			},
		},
	},

	{
		"akinsho/bufferline.nvim",
		opts = {
			options = {
				separator_style = "slant",
				themable = true,
				offsets = {
					{ filetype = "NvimTree", highlight = "NvimTreeNormal" },
				},
			},
		},
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
}

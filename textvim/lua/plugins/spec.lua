return {
	"EdenEast/nightfox.nvim",
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		opts = {},
	},
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		opts = {
			defaults = {
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = { prompt_position = "top" },
				},
			},
		},
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

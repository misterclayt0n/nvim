return {
	{
		'stevearc/oil.nvim',
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
    'numToStr/Comment.nvim',
		config = true,
    lazy = false,
	},
	{
		"szw/vim-maximizer",
		keys = {
			{ "<leader>wo", "<cmd>MaximizerToggle<CR>" }
		}
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy"
	},
	{
		'stevearc/conform.nvim',
		opts = {},
	}
}

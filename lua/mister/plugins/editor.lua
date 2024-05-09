return {
	-- {
	-- 	"stevearc/oil.nvim",
	-- 	opts = {},
	-- 	-- Optional dependencies
	-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- },
	{
		"numToStr/Comment.nvim",
		config = true,
		lazy = false,
	},
	{
		"szw/vim-maximizer",
		keys = {
			{ "<leader>wo", "<cmd>MaximizerToggle<CR>" },
		},
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	{
		"github/copilot.vim",
	},
	{
		{
			"gbprod/yanky.nvim",
			dependencies = not jit.os:find("Windows") and { "kkharji/sqlite.lua" } or {},
			opts = {
				highlight = { timer = 150 },
				ring = { storage = jit.os:find("Windows") and "shada" or "sqlite" },
			},
		},
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"ej-shafran/compile-mode.nvim",
		branch = "latest",
		-- or a specific version:
		-- tag = "v2.0.0"
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "m00qek/baleia.nvim", tag = "v1.3.0" },
		},
		opts = {
			-- you can disable colors by uncommenting this line
			-- no_baleia_support = true,
			default_command = "npm run build",
		},
	},
}

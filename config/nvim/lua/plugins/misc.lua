return {
	{
		"christoomey/vim-tmux-navigator",
	},
	{
		"tpope/vim-sleuth",
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"tpope/vim-rhubarb",
	},
	{
		'ojroques/vim-oscyank',
        },
	{
		"folke/which-key.nvim",
	},
	{ 
		'kkoomen/vim-doge',
		build = ':call doge#install()'
        },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
		require("colorizer").setup()
		end,
	},
}

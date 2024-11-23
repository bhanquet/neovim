return {
	"ThePrimeagen/harpoon",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{
			"<leader>hm",
			function()
				require("harpoon.mark").add_file()
			end,
			desc = "Harpoon: Mark",
		},
		{
			"<leader>hl",
			function()
				require("harpoon.ui").toggle_quick_menu()
			end,
			desc = "Harpoon: Toggle quick menu",
		},
		{
			"<leader>hn",
			function()
				require("harpoon.ui").nav_next()
			end,
			desc = "Harpoon: Navigate to next plane",
		},
		{
			"<leader>hp",
			function()
				require("harpoon.ui").nav_prev()
			end,
			desc = "Harpoon: Navigate to previous plane",
		},
		{
			"<leader>&",
			function()
				require("harpoon.ui").nav_file(1)
			end,
			desc = "Harpoon: Navigate to plane 1",
		},
		{
			"<leader>é",
			function()
				require("harpoon.ui").nav_file(2)
			end,
			desc = "Harpoon: Navigate to plane 2",
		},
		{
			'<leader>"',
			function()
				require("harpoon.ui").nav_file(3)
			end,
			desc = "Harpoon: Navigate to plane 3",
		},
		{
			"<leader>'",
			function()
				require("harpoon.ui").nav_file(4)
			end,
			desc = "Harpoon: Navigate to plane 4",
		},
	},
}

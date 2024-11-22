return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = function()
		local builtin = require("telescope.builtin")
		return {
			{ "<leader>ff", builtin.find_files, desc = "Find file" },
			{ "<leader>fg", builtin.live_grep, desc = "Find grep" },
			{ "<leader>fe", builtin.git_files, desc = "Find git" },
			{ "<leader>fb", builtin.buffers, desc = "Find buffer" },
			{ "<leader>fh", builtin.help_tags, desc = "Find help" },
		}
	end,
}

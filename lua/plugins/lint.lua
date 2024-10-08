return {
	{
		"mfussenegger/nvim-lint",
		config = function()
			require("lint").linters_by_ft = {
				php = { "phpcs" },
				go = { "golangcilint" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
	{
		"rshkarin/mason-nvim-lint",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-lint",
		},
		opts = {
			automatic_installation = true,
		},
	},
}

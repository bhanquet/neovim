return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        vim.filetype.add({
            pattern = {
                [".*%.blade%.php"] = "blade",
            },
        })

        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {"lua", "vim", "vimdoc", "javascript", "html", "rust", "go", "blade"},
            auto_install = true,
            highlight = {enable = true},
            indent = {enable = true},
        })
        local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
        parser_config.blade = {
            install_info = {
                url = "https://github.com/EmranMR/tree-sitter-blade",
                files = {"src/parser.c"},
                branch = "main",
            },
            filetype = "blade"
        }
    end
}

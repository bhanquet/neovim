return {
    {
        "echasnovski/mini.icons",
        opts = {}
    },
    {
        "nvim-tree/nvim-web-devicons"
    },
    {

        'folke/which-key.nvim',
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)"
            },
        },
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            actions = {
                open_file = {
                    quit_on_open = true
                },
            },
        },
        config = function(_, opts)
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            require('nvim-tree').setup(opts)
            
        end
    }
}

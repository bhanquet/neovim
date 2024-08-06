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
            sync_root_with_cwd = true,
            respect_buf_cwd = true,
            update_focused_file = {
                enable = true,
            },
            actions = {
                open_file = {
                    quit_on_open = true
                },
            },
        },
        config = function(_, opts)
            local api = require("nvim-tree.api")
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            -- Auto focus on undotree
            vim.g.undotree_SetFocusWhenToggle = 1

            require('nvim-tree').setup(opts)
            vim.keymap.set('n', '<leader>e', api.tree.toggle)
        end
    },
    {
        'mbbill/undotree',
        keys = {
            {'<leader>u', vim.cmd.UndotreeToggle}
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {},
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {},
    },
}

return {
    'folke/persistence.nvim',
    event = "BufReadPre",
    keys = {
        { "<leader>qs", function() require("persistence").load() end },
        { "<leader>qS", function() require("persistence").select() end },
        { "<leader>ql", function() require("persistence").load({ last = true }) end },
        { "<leader>qd", function() require("persistence").stop() end },
    },
    opts = {},
}

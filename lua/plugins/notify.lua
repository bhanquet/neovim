return {
    'rcarriga/nvim-notify',
    opts = {
        minimum_width = 30,
    };
    config = function(_, opts)
        require('notify').setup(opts)
        vim.notify = require('notify')
        vim.keymap.set('n', '<leader>fn', '<cmd>Telescope notify<cr>')
    end,
}

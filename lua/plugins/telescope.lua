return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        local set = function(mode, sc, action) vim.keymap.set(mode, sc, action)  end

        set('n', '<leader>ff', builtin.find_files)
        set('n', '<leader>fg', builtin.live_grep)
        set('n', '<leader>fb', builtin.buffers)
        set('n', '<leader>fh', builtin.help_tags)
    end,
}

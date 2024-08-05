return {
    'ahmedkhalf/project.nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim'
    },
    config = function()
        require("project_nvim").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }

        require('telescope').load_extension('projects')
    end,
    keys = function ()
        local projects = require('telescope').extensions.projects
        return {
            {'<leader>fp', function() projects.projects{} end, desc = "Find projects"},
        }
    end,
}

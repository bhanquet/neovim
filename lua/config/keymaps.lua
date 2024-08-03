local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.keymap.set(mode, lhs, rhs, options)
end

map('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Remove search highlight

-- Movements
map('n', '<S-l>', '$') -- Go to the end of the file
map('n', '<S-h>', '^') -- Go to the beginning of the file
map('i', 'jk', '<Esc>') -- Exit insert mode by pressing 

-- Move cursor in insert mode
map('i', '<C-h', '<Left>')
map('i', '<C-j', '<Down>')
map('i', '<C-k', '<Up>')
map('i', '<C-l', '<Right>')

-- Buffer navigation
map('n', '<leader>bn', '<cmd>bnext<cr>')
map('n', '<leader>bp', '<cmd>bprevious<cr>')
map('n', '<leader>bq', '<cmd>bdelete<cr>')

-- Split screen
map('n', '<leader>sh', '<cmd>horizontal split<cr>')
map('n', '<leader>sv', '<cmd>vertical split<cr>')
map('n', '<Up>', '<C-w>k')
map('n', '<Right>', '<C-w>l')
map('n', '<Down>', '<C-w>j')
map('n', '<Left>', '<C-w>h')

-- Tab
map('n', '<leader>tc', '<cmd>tabnew<cr>')
map('n', '<leader>tn', '<cmd>tabnext<cr>')
map('n', '<leader>tp', '<cmd>tabprevious<cr>')
map('n', '<leader>to', '<cmd>tabonly<cr>')
map('n', '<leader>tq', '<cmd>tabclose<cr>')

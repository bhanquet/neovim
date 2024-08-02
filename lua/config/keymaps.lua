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

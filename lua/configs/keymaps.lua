vim.keymap.set('n', 'Y', '"xyy"xp', {})
vim.keymap.set('n', '<c-y>', '"xyy"xp', {})
vim.keymap.set('n', 'vv', 'V', {})
vim.keymap.set('n', 'cw', '"_ciw', {})
vim.keymap.set('n', 'ci"', '"_ci"', {})
vim.keymap.set('n', 'ci\'', '"_ci\'', {})


vim.keymap.set('n', '\\', function() vim.cmd("w") end, {})
vim.keymap.set('n', '|', function() vim.cmd("q") end, {})


vim.keymap.set('n', '<c-h>', '<c-w>h', {})
vim.keymap.set('n', '<c-l>', '<c-w>l', {})
vim.keymap.set('n', '<c-j>', '<c-w>j', {})
vim.keymap.set('n', '<c-k>', '<c-w>k', {})
vim.keymap.set('i', 'jj', '<esc>', {})
vim.keymap.set('i', 'jk', '<esc>', {})
vim.keymap.set('i', 'kk', '<esc>', {})
vim.keymap.set('i', 'kj', '<esc>', {})
-- ===============================================
-- ===============================================
vim.keymap.set('n', '<leader>e', function() vim.cmd("NvimTreeToggle") end, {})

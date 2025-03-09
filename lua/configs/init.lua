
vim.keymap.set('n', 'Y', '"xyy"xp', {})
vim.keymap.set('n', 'vv', 'V', {})
vim.keymap.set('n', 'cw', '"_ciw', {})
vim.keymap.set('n', 'ci"', '"_ci"', {})
vim.keymap.set('n', 'ci\'', '"_ci\'', {})

-- vim.keymap.set('n', '\\', ':w<cr>', {})
vim.keymap.set('n', '\\', function() vim.cmd("w") end, {})
vim.keymap.set('n', '|', function() vim.cmd("q") end, {})
-- vim.keymap.set('n', '|', ':q<cr>', {})

vim.o.clipboard = "unnamedplus"
vim.opt.inccommand = "split"

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.opt.undofile = true
vim.opt.mouse = "a"
-- vim.cmd.colorscheme("ayu")
vim.cmd.colorscheme("kanagawa")
-- vim.cmd.colorscheme("onehalflight")
-- vim.o.relativenumber = true
vim.o.number = true

-- vim.g.python3_host_prog = '/path/to/python3'
vim.g.loaded_python3_provider = 0

-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- vim.opt.listchars = { tab = '··', trail = '·', nbsp = '␣' }

vim.o.swapfile = false
vim.cmd("TSEnable highlight")
vim.o.linebreak = true
vim.o.wrap = true
-- vim.o.breakat = " ^!@*-+;:,./?"
-- vim.opt.breakindentopt = { 'shift:2' }
-- vim.o.showbreak = '|'


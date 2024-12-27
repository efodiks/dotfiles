vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/nvim/undo"
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.cmd.colorscheme("everforest")

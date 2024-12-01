vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.hlsearch = false
opt.incsearch = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.scrolloff = 8
opt.updatetime = 50

opt.backspace = "indent,eol,start"

opt.splitright = true
opt.splitbelow = true

local opt = vim.opt

-- Indentation

opt.smartindent = true
opt.wrap = true

---- Important Grammar and spell check
opt.spelllang = "en"
opt.spell = false

-- Search

opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.completeopt = "menuone,noselect"
vim.g.have_nerd_font = true
-- Apperance

opt.number = true
opt.termguicolors = true
opt.cmdheight = 1
opt.scrolloff = 10

-- Behaviour
vim.o.confirm = true

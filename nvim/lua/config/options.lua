--options
vim.o.colorcolumn = "80"
vim.opt.scrolloff = 10
vim.opt.termguicolors = true
vim.opt.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.termguicolors = true
vim.g.have_nerd_font = true
vim.opt.scrolloff = 10
vim.cmd("syntax enable")
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.colorcolumn = "80"
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)
vim.o.breakindent = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

--Tab sizing--
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

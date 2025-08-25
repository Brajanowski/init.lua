local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
		{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
		{ out, "WarningMsg" },
		{ "\nPress any key to exit..." },
	}, true, {})
	vim.fn.getchar()
	os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 8
vim.opt.colorcolumn = "81"

vim.wo.wrap = false
vim.wo.linebreak = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.updatetime = 50

vim.opt.guifont = "Comic Code Ligatures:24"
vim.opt.guicursor = "n-v-i-c:block-Cursor"

vim.diagnostic.config({
    virtual_text = {
        prefix = "",
        source = "if_many",
        spacing = 0,
    },
    signs = false,
    underline = true,
    update_in_insert = false
})

-- Highlighting when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking",
    group = vim.api.nvim_create_augroup("be-highlight-yank", {clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end
})

-- Terminals
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
vim.keymap.set('t', '<C-w>h', [[<C-\><C-n><C-w>h]], { noremap = true })
vim.keymap.set('t', '<C-w>j', [[<C-\><C-n><C-w>j]], { noremap = true })
vim.keymap.set('t', '<C-w>k', [[<C-\><C-n><C-w>k]], { noremap = true })
vim.keymap.set('t', '<C-w>l', [[<C-\><C-n><C-w>l]], { noremap = true })

vim.keymap.set('n', 'gd', function()
    vim.lsp.buf.definition()
end, {noremap = true, silent = true})

-- Plugins
require("lazy").setup({
	spec = {
        { import = "plugins" },
	},
})

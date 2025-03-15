-- colorscheme
vim.cmd("colorscheme kanagawa")

-- leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.hlsearch = true
vim.opt.scrolloff = 10

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- keymaps
vim.keymap.set("n", "<leader>k", require("telescope.builtin").find_files)


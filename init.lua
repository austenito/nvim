-- Set <space> as the leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

require "keymaps"
require "autocmd"
require "options"
require "lsp"

-- [[ Setup lazy plugin manager ]]
require "config.lazy"

vim.cmd.colorscheme "kanagawa-paper-canvas"

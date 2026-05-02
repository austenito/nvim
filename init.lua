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

local hour = tonumber(os.date "%H")
if hour >= 7 and hour < 18 then
  vim.o.background = "light"
  vim.cmd.colorscheme "tokyonight-day"
else
  -- Night theme
  vim.o.background = "dark"
  vim.cmd.colorscheme "tokyonight-moon"
end

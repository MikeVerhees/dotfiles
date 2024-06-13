local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
{
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{"folke/which-key.nvim", event = "VeryLazy", init = function() vim.o.timeout = true vim.o.timeoutlen = 300 end,
	  opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
		}
	}
})
vim.opt.clipboard:append {'unnamed', 'unnamedplus'}
vim.cmd.colorscheme "catppuccin"
local wk = require("which-key")

-- Initialize lazy.lua
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
-- pkgs
require('lazy').setup({
	-- LSP pkgs
	{
		{
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig"
		},
	},
	-- Telescope
	{
		{
			"nvim-lua/plenary.nvim"
		},
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.8",
		},
	},
	-- less essential, but cool to have
	{
		"tamton-aquib/staline.nvim",
		"ya2s/nvim-cursorline",
	},
}
)

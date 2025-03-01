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
	-- Autocomplete
	{
		{
			"hrsh7th/nvim-cmp",
			dependencies = {
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				--"hrsh7th/cmp-cmdline",
				"L3MON4D3/LuaSnip"
			},
			config = function()
				local cmp = require'cmp'
				cmp.setup({
					snippet = {
						expand = function(args)
						require'luasnip'.lsp_expand(args.body)
						end
					},
        			sources =
					cmp.config.sources({
        					{ name = 'nvim_lsp' },
        					{ name = 'buffer' },
        				})
				})
			end
		},
	},
	-- Telescope
	{
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.8",
			dependencies = {
				"nvim-lua/plenary.nvim"
			},
		},
		{
			"TimUntersberger/neofs"
		}
	},
	-- Blankline indentation
	{
		"lukas-reineke/indent-blankline.nvim",
		"ya2s/nvim-cursorline"
	},
	-- Visual things
	{
		-- Transparency
		{
			"xiyaowong/transparent.nvim"
		},
		-- Color schemes 
		{
			-- Everforest scheme - my favourite
			{
				"neanias/everforest-nvim"
			},

		},
		{
			"tamton-aquib/staline.nvim"
		},
	},
	{
		{
        		'2kabhishek/termim.nvim',
			cmd = { 'Fterm', 'FTerm', 'Sterm', 'STerm', 'Vterm', 'VTerm' },
		},
	},
	-- Language Specific
	{
		-- Rust
		{
			{
				'saecki/crates.nvim',
				tag = 'stable',
				config = function()
        				require('crates').setup()
				end,
			}
		}
	}
})

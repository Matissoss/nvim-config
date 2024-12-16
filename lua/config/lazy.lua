-- Bootstrap lazy.nvim
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
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
{"williamboman/mason.nvim","williamboman/mason-lspconfig.nvim",},
{"neovim/nvim-lspconfig",},
{"OmniSharp/omnisharp-vim"},
{"nvim-lualine/lualine.nvim",dependencies = { "nvim-tree/nvim-web-devicons" }},
{"goolord/alpha-nvim",requires = { "nvim-tree/nvim-web-devicons" }},
{"nvim-telescope/telescope.nvim", tag = "0.1.8",dependencies = { "nvim-lua/plenary.nvim" },"nvim-telescope/telescope-project.nvim"},
{{'simrat39/rust-tools.nvim',config = function()require('rust-tools').setup({})end,}},
{{"hrsh7th/nvim-cmp",dependencies = {"hrsh7th/cmp-nvim-lsp","hrsh7th/cmp-buffer","hrsh7th/cmp-path","hrsh7th/cmp-cmdline","L3MON4D3/LuaSnip",},
	config = function()
      		local cmp = require'cmp'
      		cmp.setup({
      	  		snippet = {
       	   			expand = function(args)
       	     			require'luasnip'.lsp_expand(args.body)
       	   		end,},
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' },
        })
      })
    end,},},
{ "lukas-reineke/indent-blankline.nvim" 	},
{"nvim-neo-tree/neo-tree.nvim",branch = "v3.x",dependencies = {"nvim-lua/plenary.nvim","nvim-tree/nvim-web-devicons","MunifTanjim/nui.nvim",}},
{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
{	"neanias/everforest-nvim" 	},
{	"zootedb0t/citruszest.nvim" 	},
{	"olimorris/onedarkpro.nvim"	},
{	"gelguy/wilder.nvim"	},
{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
{ "xiyaowong/transparent.nvim"		},
})

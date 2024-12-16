require('mason').setup()

-- Ensure That Lsp's are installed
require('mason-lspconfig').setup({
	ensure_installed = {"rust_analyzer", "svelte", "ts_ls", "omnisharp", "html", "cssls", "lua_ls", "rnix"}
})

-- 
-- Autocomplete
--

local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['	'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-	>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})
--Lsp Config

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

-- 
-- Lsp's for specific languages
-- 

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Config for HTML
require('lspconfig').html.setup {
  capabilities = capabilities,
}

-- Config for CSS
require('lspconfig').cssls.setup {
  capabilities = capabilities,
}

-- Config for JS/TS
require('lspconfig').ts_ls.setup {
  capabilities = capabilities,
}

-- Config for Nix
require('lspconfig').rnix.setup{
	capabilities = capabilities,
}
-- Config for C# | .NET
require('lspconfig').csharp_ls.setup{
	capabilities =capabilities
}

--Config for Rust 
require('lspconfig').rust_analyzer.setup{
	capabilities = capabilities
}

--Config for Svelte 
require('lspconfig').svelte.setup{
	capabilities = capabilities
}
--Config for TOML
require('lspconfig').dprint.setup{
	capabilities = capabilities
}
--Config for C 
require('lspconfig').clangd.setup{
	capabilities = capabilities
}

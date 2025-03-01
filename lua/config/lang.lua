require('mason').setup()

require('config.langs.rust')
require('config.langs.lua')
--Doesn't work for some reason
--require('config.langs.html')

require('config.langs.css')
require('config.langs.js_ts')


-- Autocomplete setup
local cmp = require('cmp')
cmp.setup{
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
  },
  {
    { name = 'buffer' },
  })
}

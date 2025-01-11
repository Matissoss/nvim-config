-- Lualine
require("ibl").setup()
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = auto,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {''},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}--
}

-- Dashboard 
local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
	[[#  # #### #    #    ####   #    # #### #### #    ###   #]],
	[[#  # #    #    #    #  #   #    # #  # #  # #    #  #  #]],
	[[#### #### #    #    #  #   # ## # #  # ###  #    #  #  #]],
	[[#  # #    #    #    #  #   ##  ## #  # #  # #    #  #   ]],
	[[#  # #### #### #### ####   #    # #### #  # #### ###   #]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "   > Edit File", ":Telescope find_files<CR>"),
  	dashboard.button("q", "   > Exit", ":qa<CR>"),
}

alpha.setup(dashboard.opts)

-- CMD Autocomplete
require('wilder').setup({modes = {':', '/', '?'}})
local wilder = require('wilder')

wilder.set_option('renderer', wilder.popupmenu_renderer({
  pumblend = 20,
}))

require('transparent').setup()
--require('transparent').clear_prefix('lualine')


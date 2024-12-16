require("config.lazy")
require("config.langs")
require("config.keybindings")
require("config.dashboard")
require("config.status_bar")
require("config.stard_cmd")

require('wilder').setup({modes = {':', '/', '?'}})
local wilder = require('wilder')

wilder.set_option('renderer', wilder.popupmenu_renderer({
  pumblend = 20,
}))

require('transparent').setup()
--require('transparent').clear_prefix('lualine')


--
--	Dashboard
--

local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
  [[                               __                ]],
  [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
  [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \ /' __` __`\  ]],
  [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
  [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
  [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}

dashboard.section.buttons.val = {
	dashboard.button("n", "  > New File", ":ene <BAR> <CR>"),
	dashboard.button("f", "  > Open File", ":Telescope find_files<CR>"),
	dashboard.button("t", "󰦨  > Search Text", ":Telescope live_grep<CR>"),
  	dashboard.button("q", "󰿅  > Exit", ":qa<CR>"),
}

alpha.setup(dashboard.opts)

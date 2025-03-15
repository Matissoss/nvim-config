-- main colors
local bg 		= "#121212"
local bg_dark		= "#242424"

local fg 		= "#C8C8CC"
local fg_dark		= "#969699"

-- accent colors
local red 		= "#C75147"
local red_dark		= "#782830"

local blue 		= "#94D3E6"
local blue_dark		= "#1D343C"

local cyan 		= "#A8FECB"
local cyan_dark		= "#528064"

local orange 		= "#FDA73C"
local orange_dark	= "#D29A55"

local green 		= "#9BD85F"
local green_dark 	= "#8DBF67"

local yellow		= "#E3D050"
local yellow_dark	= "#B8A840"

local magenta		= "#B157D0"
local magenta_dark	= "#2F2433"

-- start

function set_color(group_name, bg_fg)
	vim.api.nvim_set_hl(0, group_name, bg_fg)
end

set_color("Normal"	, { bg=bg,	fg=fg		})
set_color("EndOfBuffer"	, { bg=bg,	fg=fg_dark	})
set_color("Cursor"	, { bg=fg_dark,	fg=fg_dark	})
set_color("CursorColumn", { bg=fg_dark			})
set_color("Comment"	, { fg=fg_dark			})

set_color("Statement"	, { fg=magenta			})
set_color("Operator"	, { fg=fg_dark			})
set_color("Type"	, { fg=fg			})
set_color("Function"	, { fg=blue			})
set_color("Identifier"	, { fg=green			})
set_color("Constant"	, { fg=yellow			})
set_color("Error"	, { fg=red			})
set_color("Structure"	, { fg=red			})
set_color("String"	, { fg=green_dark		})
set_color("Directory"	, { fg=blue			})
set_color("StatusLine"	, { bg=bg,	fg=fg_dark	})
set_color("WarningMsg"	, { fg=yellow			})
set_color("ErrorMsg"	, { fg=red			})

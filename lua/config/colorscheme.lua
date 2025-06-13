local fg      = "#C7C7C7";
local accent0 = "#A4A4A4";
local accent1 = "#818181";
local bg      = "#101010";

-- start

function hl(group_name, bg_fg)
	vim.api.nvim_set_hl(0, group_name, bg_fg)
end

hl("Normal", {bg=bg, fg=fg})
hl("EndOfBuffer", {bg=bg, fg=accent1})
hl("Cursor", {bg=fg,fg=bg})
hl("CursorColumn", {bg=accent1})
hl("Comment", {fg=accent1})

hl("Delimeter", {fg=accent1})
hl("Character", {fg=accent1})
hl("Boolean", {fg=accent1})
hl("Float", {fg=accent1})
hl("Keyword", {fg=accent0})
hl("Statement", {fg=accent1})
hl("Operator", {fg=fg})
hl("Type", {fg=fg})
hl("Function", {fg=fg})
hl("Identifier", {fg=fg})
hl("Constant", {fg=fg})
hl("Error", {fg=fg})
hl("Structure", {fg=accent0})
hl("String", {fg=accent0})
hl("rustLifetime", {fg=accent1})
hl("Directory", {fg=fg})
hl("StatusLine", {bg=bg, fg=accent1})
hl("StorageClass", {fg=fg})

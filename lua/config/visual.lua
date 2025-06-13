require('staline').setup {
    defaults = {
        expand_null_ls	= false,
        full_path	= false,
        line_column	= "[%l/%L] %t",
	branch_symbol	= "",
	mod_symbol	= "+",
        fg		= "#818181",
        inactive_bgcolor= "none",
        true_colors     = false,
	font_active     = "bold",
    },
    mode_colors = {
	n = "#101010",
        i = "#101010",
	V = "#101010",
        c = "#101010",
        v = "#101010",
	R = "#101010"
    },
    mode_icons = {
        n = "n",
        i = "i",
	V = "V",
        c = "c",
        v = "v",
	R = "r",
	T = "t"
	-- etc..
    },
    sections = {
	-- branch
        left = { '-mode' },
        mid  = { 'lsp' },
        right = { 'file_name' },
    },
    lsp_symbols = {
        Error="E",
        Info="I",
        Warn="W",
        Hint="H",
    },
    file_icons = {
	typescript='',
	css='',
	scss='',
	javascript='',
	javascriptreact='',
	html='',
	python='',
	java='',
	markdown='',
	sh='',
	zsh='',
        vim='',
	lua='',
	haskell='',
	conf='',
	ruby='',
	txt='',
        rust='',
	cpp='',
	c='',
	go='',
    }
}

require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}

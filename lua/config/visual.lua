require("ibl").setup()
require('transparent').setup()
require('staline').setup {
    defaults = {
        expand_null_ls = false,
        full_path       = false,
        line_column     = "[%l/%L] :%c 並%p%% ",
	branch_symbol = "",
        fg              = "#ffffff",
        inactive_bgcolor = "none",
        true_colors     = false,
	font_active     = "bold",
    },
    mode_colors = {
        n = "#e67e80",
        i = "#7fbbb3",
	V = "#dbbc7f",
        c = "#a7c080",
        v = "#d699b6",   -- etc..
    },
    mode_icons = {
        n = "nor",
        i = "ins",
	V = "vli",
        c = "com",
        v = "vis",   -- etc..
    },
    sections = {
        left = { '-mode','branch' },
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
	typescript='' , css='' , scss='' , javascript='' , javascriptreact='' , html='' ,
        python='', java='' , markdown='' , sh='',zsh='',
        vim='', lua='', haskell='', conf='', ruby='', txt='',
        rust='', cpp='', c='', go='',
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

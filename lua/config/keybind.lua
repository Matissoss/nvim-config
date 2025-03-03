--	Normal Mode Bindings
vim.g.mapleader = ' '
local keybind = vim.api.nvim_set_keymap
local ns = {noremap=true, silent=true}

keybind('n', 'Fi' , ':Telescope find_files<CR>', ns)
keybind('n', 'Fg' , ':Fterm lazygit<CR>', ns)
keybind('n', 'Grr', ':Fterm cargo run<CR>', ns)
keybind('n', 'Grl', ':Fterm cargo run --release<CR>', ns)
keybind('n', 'q'  , ':q<CR>', ns)
keybind('i', '<C-f>', '<C-x><C-o>', ns)

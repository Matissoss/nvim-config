--
--	Normal Mode Bindings
-- 

vim.api.nvim_set_keymap('n', 'Fi', ':Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'old', ':Telescope oldfiles<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'Spv', ':vsplit <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'Sph', ':split <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'fi', ':Neotree <CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'q', ':q <CR>', {noremap = true, silent = true})

-- Editor settings

vim.api.nvim_set_keymap('n', 'Sett', ':edit ~/.config/nvim <CR>', {noremap =true, silent = true})
vim.api.nvim_set_keymap('n', 'Todo', ':edit ~/notes <CR>', {noremap =true, silent = true})

-- Themes

vim.api.nvim_set_keymap('n', 'clg', ':colorscheme gruvbox <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'clo', ':colorscheme onedark <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'clt', ':colorscheme tokyonight-night <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'clcf', ':colorscheme catppuccin-frappe <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'clcl', ':colorscheme catppuccin-latte <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'clcm', ':colorscheme catppuccin-mocha <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'clca', ':colorscheme catppuccin-macchiato <CR>', {noremap = true, silent = true})
-- 
--	Language Bindings
--

--Rust
vim.api.nvim_set_keymap('n', 'rco', ':!cargo run <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'rch', ':!cargo check <CR>', {noremap = true, silent =true})
vim.api.nvim_set_keymap('n', 'rts', ':!cargo test<CR>', {noremap = true, silent = true})
---
---	Insert Mode Bindings
---


-- End

vim.g.mapleader = ' '

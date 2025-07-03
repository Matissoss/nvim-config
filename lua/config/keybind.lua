--	Normal Mode Bindings
vim.g.mapleader = ' '
local keybind = vim.api.nvim_set_keymap
local ns = {noremap=true, silent=true}

local function find_todos()
  local cwd = vim.fn.getcwd()
  local results = {}

  local rg_cmd = "rg --no-heading --with-filename --line-number --trim --color never 'TODO:' " .. vim.fn.shellescape(cwd)

  local handle = io.popen(rg_cmd)
  if not handle then
    vim.notify("Could not open ripgrep", vim.log.levels.ERROR)
    return
  end

  for line in handle:lines() do
    local relative_line = line:gsub(cwd .. "/", "")
    table.insert(results, relative_line)
  end
  handle:close()

  if #results == 0 then
    vim.notify("No todos found.", vim.log.levels.INFO)
    return
  end

  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, results)

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.min(#results, math.floor(vim.o.lines * 0.6))
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    row = row,
    col = col,
    width = width,
    height = height,
    style = "minimal",
    border = "rounded",
  })

  vim.keymap.set("n", "q", function() vim.api.nvim_win_close(win, true) end, { buffer = buf, nowait = true })
  vim.keymap.set("n", "<Esc>", function() vim.api.nvim_win_close(win, true) end, { buffer = buf, nowait = true })
end

function replace()
  local from = vim.fn.input("from: ")
  if from == "" then return end

  local to = vim.fn.input("to: ")

  local mode = vim.fn.mode()
  if mode == "v" or mode == "V" then
    vim.cmd("'<,'>s/" .. from .. "/" .. to .. "/g")
  else
    vim.cmd("%s/" .. from .. "/" .. to .. "/g")
  end
end

vim.api.nvim_create_user_command("Todo", find_todos, {})
vim.api.nvim_create_user_command("Replace", replace, {})

vim.keymap.set('n', 'Ft', find_todos, {})
vim.keymap.set('n', 'Fr', replace, {})
keybind('n', 'Fi' , ':Telescope find_files<CR>', ns)
keybind('i', '<C-f>', '<C-x><C-o>', ns)

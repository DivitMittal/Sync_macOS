-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━❰ Plugin-Independent Mapping ❱━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
--[[this config file contains the mapping that don't depends
 on any plugin. mappings for plugins-dependent are in
 lua/plugin" directory. each plugin has it's own config file
To see the current mapping for |<Leader>| type :echo mapleader.
If it reports an undefined variable it means the leader key is
set to the "default of '\'.]]

local keymap	= vim.api.nvim_set_keymap
local cmd	    = vim.cmd
local options	= {noremap = true, silent = true}
local silent	= {silent = true}

-- to quit vim
cmd([[ autocmd BufEnter * nmap silent <buffer> <Leader>q :bd<CR> ]])

-- exit mode
keymap('n', 'kj', '<Esc>', options)
keymap('i', 'kj', '<Esc>', options)
keymap('v', 'kj', '<Esc>', options)


-- move selected line(s) up or down
keymap('v', 'J', ":m '>+1<CR>gv=gv", options)
keymap('v', 'K', ":m '<-2<CR>gv=gv", options)

--[[
      easier moving of code blocks
      Try to go into visual mode (v), thenselect several lines of code
      here and then press ``>`` several times.
--]]
keymap('v', '<', '<gv', options)
keymap('v', '>', '>gv', options)

--			Resize splits more quickly
-- ────────────────────────────────────────────────────
-- resize up and down
keymap('n', ',k', ':resize +3 <CR>', options)
keymap('n', ',j', ':resize -3 <CR>', options)
-- resize right and left
keymap('n', ',l', ':vertical resize +3 <CR>', options)
keymap('n', ',h', ':vertical resize -3 <CR>', options)
-- ────────────────────────────────────────────────────

-- clear Search Results
keymap('n', '//', ':noh <CR>', silent)

-- number line enable
keymap('n', '<leader>n', ':set rnu! <CR>', silent)

-- going back to normal mode which works even in vim's terminal
-- you will need this if you use floaterm to escape terminal
keymap('t', '<Esc>', '<c-\\><c-n>', options)

-- scroll window up/down
keymap('i', '<C-e>', '<ESC><C-e>', silent)
keymap('i', '<C-y>', '<ESC><C-y>', silent)

-- scroll window horizontally (scroll-horizontal)
-- < reference: https://unix.stackexchange.com/questions/110251/how-to-put-current-line-at-top-center-bottom-of-screen-in-vim
keymap('n', '<C-h>', 'zh', silent) -- left
keymap('n', '<C-l>', 'zl', silent) -- right

-- keymap('n', '<Leader>q',':q <CR>',      options)
-- to save file
keymap('i', '<C-s>', '<ESC>ma<ESC>:w <CR>`a', options)
keymap('n', '<C-s>', '<ESC>ma<ESC>:w <CR>`a', options)


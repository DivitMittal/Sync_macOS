require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap('n', 'f', '<cmd>HopChar1<CR>', opts)
keymap('n', 'F', '<cmd>HopChar2<CR>', opts)
keymap('n', 't', '<cmd>HopWord<CR>', opts)
keymap('n', 'T', '<cmd>HopLineStart<CR>', opts)


local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap('n', 'ga', ':EasyAlign <CR>', opts)
keymap('v', 'ga', ':EasyAlign <CR>', opts)


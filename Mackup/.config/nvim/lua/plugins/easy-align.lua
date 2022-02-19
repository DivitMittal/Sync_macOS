local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap('n', 'ga', '<cmd>EasyAlign<CR>', opts)
keymap('v', 'ga', '<cmd>EasyAlign<CR>', opts)


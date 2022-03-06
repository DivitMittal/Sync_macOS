local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

--keymap('n', 'ea', ':EasyAlign<CR>', opts)
keymap('v', 'ea', ':EasyAlign<CR>', opts)


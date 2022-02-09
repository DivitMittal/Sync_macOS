local g = vim.g        -- global variables
local keymap = vim.api.nvim_set_keymap -- keymap variables

g.copilot_no_tab_map = true,
keymap("i", "<Right>", 'copilot#Accept("<CR>")', { silent = true, expr = true })


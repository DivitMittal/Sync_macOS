local cmd = vim.cmd -- execute Vim commands
local g = vim.g -- get Vim global variables

if not g.vscode then
	cmd [[ colorscheme pop-punk ]]
end


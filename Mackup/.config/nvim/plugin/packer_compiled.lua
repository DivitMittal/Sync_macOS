-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { " require('plugins/Comment_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { " require('plugins/LuaSnip') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/Users/divitmittal/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { " require('plugins/indent-blankline_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    config = { " require('plugins/lspkind-nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { " require('plugins/lualine')" },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["null-ls.nvim"] = {
    config = { " require('plugins/null-ls_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { " require('plugins/nvim-autopairs') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { " require('plugins/nvim-cmp') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { " require('plugins/nvim-colorizer_lua') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { " require('plugins/nvim-lsp-installer') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { " require('plugins/nvim-lspconfig') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { " require('plugins/nvim-tree_lua') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { " require('plugins/nvim-treesitter') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { " require('plugins/nvim-web-devicons') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["pop-punk.vim"] = {
    config = { " require('plugins/pop-punk') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/pop-punk.vim",
    url = "https://github.com/bignimbus/pop-punk.vim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rooter.nvim"] = {
    config = { " require('plugins/rooter_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/rooter.nvim",
    url = "https://github.com/ygm2/rooter.nvim"
  },
  ["surround.nvim"] = {
    config = { " require('plugins/surround_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/surround.nvim",
    url = "https://github.com/blackcauldron7/surround.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { " require('plugins/telescope_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { " require('plugins/trouble_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-floaterm"] = {
    config = { " require('plugins/vim-floaterm') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-maximizer"] = {
    config = { " require('plugins/vim-maximizer') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
 require('plugins/Comment_nvim') 
time([[Config for Comment.nvim]], false)
-- Config for: surround.nvim
time([[Config for surround.nvim]], true)
 require('plugins/surround_nvim') 
time([[Config for surround.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
 require('plugins/LuaSnip') 
time([[Config for LuaSnip]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
 require('plugins/nvim-treesitter') 
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
 require('plugins/nvim-web-devicons') 
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
 require('plugins/nvim-lspconfig') 
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
 require('plugins/telescope_nvim') 
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
 require('plugins/nvim-tree_lua') 
time([[Config for nvim-tree.lua]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
 require('plugins/trouble_nvim') 
time([[Config for trouble.nvim]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
 require('plugins/vim-floaterm') 
time([[Config for vim-floaterm]], false)
-- Config for: vim-maximizer
time([[Config for vim-maximizer]], true)
 require('plugins/vim-maximizer') 
time([[Config for vim-maximizer]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
 require('plugins/nvim-autopairs') 
time([[Config for nvim-autopairs]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
 require('plugins/lspkind-nvim') 
time([[Config for lspkind-nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
 require('plugins/lualine')
time([[Config for lualine.nvim]], false)
-- Config for: pop-punk.vim
time([[Config for pop-punk.vim]], true)
 require('plugins/pop-punk') 
time([[Config for pop-punk.vim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
 require('plugins/null-ls_nvim') 
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
 require('plugins/nvim-colorizer_lua') 
time([[Config for nvim-colorizer.lua]], false)
-- Config for: rooter.nvim
time([[Config for rooter.nvim]], true)
 require('plugins/rooter_nvim') 
time([[Config for rooter.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
 require('plugins/nvim-lsp-installer') 
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
 require('plugins/nvim-cmp') 
time([[Config for nvim-cmp]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
 require('plugins/indent-blankline_nvim') 
time([[Config for indent-blankline.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType lua ++once lua require("packer.load")({'cmp-nvim-lua'}, { ft = "lua" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

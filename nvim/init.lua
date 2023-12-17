vim.g.mapleader = ' '

vim.scriptencoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.cursorline = true
vim.opt.number = true
vim.wo.number = true
vim.wo.relativenumber = false
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 2
vim.opt.scrolloff = 4
vim.opt.shell = 'zsh'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true 
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = true 
vim.opt.mouse = 'a'

vim.opt.updatetime = 300
vim.opt.showtabline = 2
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'

-- swapfile not created
vim.opt.swapfile = false
vim.opt.wrap = true

vim.opt.winblend = 5


-- lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'nvim-lua/plenary.nvim',
  'antoinemadec/FixCursorHold.nvim',
  'nvim-tree/nvim-web-devicons',
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'JoosepAlviste/nvim-ts-context-commentstring'},

  -- LSP
  {'neoclide/coc.nvim', branch = 'release'},
  'fatih/vim-go',

  -- top
  {'nvim-lualine/lualine.nvim'},

  -- bottom
  {'romgrk/barbar.nvim', dependencies = { 'nvim-web-devicons' }},

  -- fern side menu
  {'lambdalisue/fern.vim',lazy = false, priority = 1000 }, 
  'lambdalisue/fern-git-status.vim',
  {'TheLeoP/fern-renderer-web-devicons.nvim', dependencies = {'nvim-web-devicons'}},
  'lambdalisue/glyph-palette.vim',
  {'nvim-telescope/telescope.nvim' },
  {'fannheyward/telescope-coc.nvim'},

  -- side navigation
  'liuchengxu/vista.vim',

  -- search
  {'nvim-telescope/telescope-frecency.nvim', dependencies = {'kkharji/sqlite.lua'}},

  -- theme
  {'folke/tokyonight.nvim', lazy = false, priority = 1001, opts = {}},

  -- personal
  {dir = '~/Documents/plugins/first-plugin'},

  -- highlight
  {'danilamihailov/beacon.nvim'},
})

-- tokyonight
vim.cmd[[colorscheme tokyonight]]


local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = ','
vim.g.maplocalleader = ','
local keymap = vim.api.nvim_set_keymap

-- helper functions
local function map(mode, shortcut, command)
  local opts = {}
  vim.api.nvim_set_keymap(mode, shortcut, command, opts)
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

local function imap(shortcut, command)
  map('i', shortcut, command)
end

local function snoremap(shortcut, command)
  local opts = {noremap = true, silent = true, expr = true}
  keymap('s', shortcut, command, opts)
end

local function inoremap(shortcut, command)
  local opts = {noremap = true, silent = true, expr = true}
  keymap('i', shortcut, command, opts)
end

local function cnoremap(shortcut, command)
  local opts = {noremap = true, expr = true}
  keymap('c', shortcut, command, opts)
end

local function vnoremap(shortcut, command)
  local opts = {noremap = true, expr = true}
  keymap('v', shortcut, command, opts)
end

local function vmap(shortcut, command)
  map('v', shortcut, command)
end

local function xmap(shortcut, command)
  map('x', shortcut, command)
end

local function noremap(shortcut, command)
  vim.api.nvim_set_keymap('n', shortcut, command, { noremap = true, silent = true })
end

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- navigation through splits and resize the current split
nmap('<Leader>hh', '<C-w>h')
nmap('<Leader>ll', '<C-w>l')
nmap('<Leader>jj', '<C-w>j')
nmap('<Leader>kk', '<C-w>k')
nmap('<Leader>H', '<C-w>H')
nmap('<Leader>L', '<C-w>L')
nmap('<Leader>J', '<C-w>J')
nmap('<Leader>K', '<C-w>K')
nmap('<Leader>w', '<C-w>')

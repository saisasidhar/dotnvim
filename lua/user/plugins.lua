local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Close and reopen neovim after packer installation is complete"
  vim.cmd [[packadd packer.nvim]]
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- Utils
  use "tpope/vim-surround"
  use "tpope/vim-eunuch"
  use "tpope/vim-commentary"
  use "easymotion/vim-easymotion"
  use "nvim-lua/plenary.nvim"

  -- Syntax
  use "ludovicchabant/vim-gutentags"
  use "Yggdroot/indentLine"
  use "nvim-treesitter/nvim-treesitter"
  use "nvim-treesitter/playground"

  -- Layout & Colors
  use "arcticicestudio/nord-vim"
  use "mhinz/vim-startify"
  use "airblade/vim-gitgutter"
  use "preservim/tagbar"
  use "itchyny/lightline.vim"
  use "nvim-telescope/telescope.nvim"
  use "akinsho/toggleterm.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "akinsho/bufferline.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

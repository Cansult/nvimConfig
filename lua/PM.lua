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

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
--[[  { "neoclide/coc.nvim", branch = "release" },
  "vim-airline/vim-airline",
  "vim-airline/vim-airline-themes",
--  "luochen1990/rainbow",
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "sindrets/diffview.nvim",
  "nvim-tree/nvim-web-devicons",
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
  { "nvim-tree/nvim-tree.lua", version = "*", lazy = false, dependencies = { "nvim-tree/nvim-web-devicons", },
  config = function()
    require("nvim-tree").setup {}
  end
  },--]]
})

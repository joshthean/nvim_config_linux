require('config.globals')

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


---------------------------------------
local opts = 
{
  defaults = {
    lazy = true, -- should plugins be lazy-loaded?
  },
  checker = {
    notify = true, -- get a notification when new updates are found
  },
  change_detection = {
    notify = true, -- get a notification when changes are found
  },
  performance = {
    rtp = {
      disabled_plugins = {
        -- "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        -- "tarPlugin",
        -- "tohtml",
        -- "tutor",
        -- "zipPlugin",
      },
    },
  },
}

require("lazy").setup('plugins')
require('config.config_tokyonight')
require('config.nvim-tree')
require('config.telescope')
require('config.lualine')
require('config.mason')

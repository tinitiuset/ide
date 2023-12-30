local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- wilder key bindings
vim.cmd("call wilder#setup({'modes': [':', '/', '?']})")

-- vim-airline minimalist theme
vim.cmd("let g:airline_theme='minimalist'")

-- darcula-solid color scheme
vim.cmd 'colorscheme darcula-solid'
vim.cmd 'set termguicolors'
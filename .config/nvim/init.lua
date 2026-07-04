local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

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


require("lazy").setup({
    { 'kepano/flexoki-neovim', name = 'flexoki' },
    { "webhooked/kanso.nvim", lazy = false, priority = 1000 },
    { "zenbones-theme/zenbones.nvim", dependencies = "rktjmp/lush.nvim", lazy = false, priority = 1000 },
    {
  "echasnovski/mini.starter",
  version = false,
  config = function()
    require("mini.starter").setup()
  end,
}
})

vim.cmd.colorscheme("flexoki-dark")
vim.opt.hlsearch = true
vim.opt.incsearch = true

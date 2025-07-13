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

vim.opt.termguicolors = true
vim.g.have_nerd_font = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3
-- Default splitting will cause your main splits to jump when opening an edgebar.
-- To prevent this, set `splitkeep` to either `screen` or `topline`.
vim.opt.splitkeep = "screen"

require("lazy").setup({
    spec = {
        { import = "plugins" }
    },
})

vim.clipboard = unnamedplus
vim.cmd("nnoremap <leader>sv :source $MYVIMRC<CR>")
vim.cmd("nnoremap <C-z> :undo<CR>")
vim.cmd("nnoremap <C-S-z> :redo<CR>")
vim.cmd("nnoremap <A-d> :Lspsaga term_toggle<CR>")
vim.cmd("nnoremap K :Lspsaga hover_doc<CR>")
vim.cmd("nnoremap A :Lspsaga code_action<CR>")
vim.cmd("nnoremap I :Lspsaga finder<CR>")
vim.cmd("nnoremap <C-f> :Format<CR>")
vim.cmd("nnoremap <C-s> :write<CR>")
vim.cmd("nnoremap <leader>` :ToggleTerm<CR>")
-- vim.cmd("nnoremap <leader>bw :Telescope fd<CR>")
vim.loader.enable()

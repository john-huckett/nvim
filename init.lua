vim.cmd.source("~/.config/nvim/vimscript/ColorSchemePicker.vim")
vim.cmd.source("~/.config/nvim/vimscript/init.vim")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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

require("core")
require("scripts")
-- swirtch line number modes
vim.cmd("nnoremap <silent> <Leader>n :lua Number_switch()<CR>")
-- clear search highlight
vim.cmd("nnoremap <silent><leader>h :nohlsearch<cr> :set nospell<cr>")

vim.cmd("nnoremap <silent> <leader>b :bnext<cr>")
vim.cmd("nnoremap <silent> <leader>B :bprev<cr>")

 -- buftabline
vim.cmd("let g:buftabline_numbers = 2")
vim.cmd("let g:buftabline_indicators = 1")

vim.cmd("map <leader>1 <Plug>BufTabLine.Go(1)")
vim.cmd("map <leader>2 <Plug>BufTabLine.Go(2)")
vim.cmd("map <leader>3 <Plug>BufTabLine.Go(3)")
vim.cmd("map <leader>4 <Plug>BufTabLine.Go(4)")
vim.cmd("map <leader>5 <Plug>BufTabLine.Go(5)")
vim.cmd("map <leader>6 <Plug>BufTabLine.Go(6)")
vim.cmd("map <leader>7 <Plug>BufTabLine.Go(7)")
vim.cmd("map <leader>8 <Plug>BufTabLine.Go(8)")
vim.cmd("map <leader>9 <Plug>BufTabLine.Go(9)")
vim.cmd("map <leader>0 <Plug>BufTabLine.Go(10)")

-- Key mapping for "go to documentation" using LSP hover
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

vim.cmd("map <leader>po :PeekOpen<cr>")
vim.cmd("map <leader>pc :PeekClose<Opencr>")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "json",
  callback = function()
    vim.schedule(function()
      vim.opt.conceallevel = 0
    end)
  end,
})


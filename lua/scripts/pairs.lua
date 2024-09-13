vim.cmd("nnoremap <silent> <leader>pp :lua Pairs_toggle()<CR>")
-- vim.cmd("nnoremap <silent> <leader>pq :lua Pairs_surround()<CR>")

function Pairs_enable()
    Pairs_state = true
    vim.cmd("inoremap <silent> ( ()<left>")
    vim.cmd("inoremap <silent> { {}<left>")
    vim.cmd("inoremap <silent> [ []<left>")
    vim.cmd("inoremap <silent> \" \"\"<left>")
    vim.cmd("inoremap <silent> \' \'\'<left>")
    print("pairs enabled")
end

function Pairs_disable()
    Pairs_state = false
    vim.cmd("inoremap <silent> ( (")
    vim.cmd("inoremap <silent> { {")
    vim.cmd("inoremap <silent> [ [")
    vim.cmd("inoremap <silent> \" \"")
    vim.cmd("inoremap <silent> \' \'")
    print("pairs disabled")
end

function Pairs_toggle()
    if Pairs_state == true then
        Pairs_disable()
        elseif Pairs_state == false then
        Pairs_state = true
        Pairs_enable()
    end
end

-- function Pairs_surround()
--     vim.cmd [[ call feedkeys("i\"\<ESC>Wa\"\<ESC>", "n") ]]
--     print("Pairs Surround")
-- end

Pairs_enable()


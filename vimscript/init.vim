"highlight trailing whitespace
highlight ws ctermbg=red guibg=orange
match ws /\s\+$/

"delete trailing whitespace
command! Dws %s/\s\+$//e
autocmd InsertLeave * :Dws

" A color scheme picker
let g:Color_scheme_picker_open     = 0
let g:Color_scheme_picker_selected = ''

"indent guides
let g:indentguides_ignorelist = ['text']
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
set listchars=multispace:\ \ ┊

"search highlight
set hlsearch

"markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_browser = 'firefox'

"reload i3 on save oconfig
autocmd bufwritepost ~/.config/i3/config :silent !i3-msg restart ; notify-send "Reloaded i3 :"

autocmd BufRead,BufNewFile *.ncc set filetype=nc.vim

set conceallevel=0

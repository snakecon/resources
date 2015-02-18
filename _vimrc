" encode
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1

set t_Co=256

" highlight
syntax on

" highlight focus line
" autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set cursorline

" Set cursor line.
" highlight CursorLine cterm=none ctermbg=4
" let &colorcolumn=join(range(81,999),",")
" highlight ColorColumn ctermbg=235 ctermfg=128 guibg=#2c2d27
" set colorcolumn=80

" set guitablabel=%N\ %f
" hi TabLine guifg=#90fff0 guibg=#2050d0 ctermfg=yellow ctermbg=white
" hi TabLineSel guifg=#90fff0 guibg=#2050d0 ctermfg=white ctermbg=LightMagenta
" hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
" hi TabLine ctermfg=Blue ctermbg=Yellow
" hi TabLineSel ctermfg=Red ctermbg=Yellow

" highlight search
set hlsearch
set incsearch

" 高亮显示对应的括号
set showmatch

" background
" set background=dark

" Tab trans to space
set expandtab

" tab indent
set softtabstop=4
set shiftwidth=4

" smart alignment
set smartindent

" auto alignment
set autoindent

" show line number
set number

" Set foldering.
set foldmethod=syntax
set foldnestmax=3

set nowrap

" paste format origin from other
set paste

" history
set history=50

" 命令行（在状态行）的高度，默认为1,这里是2
set cmdheight=1

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

" 总是显示状态行
set laststatus=2
set statusline=%<[%F]\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine term=bold,reverse cterm=bold,reverse ctermfg=8

" 搜尋不分大小寫
set ic

"" keypad
"" http://vim.wikia.com/wiki/PuTTY_numeric_keypad_mappings
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Op 0
imap <Esc>On .
imap <Esc>OQ /
imap <Esc>OR *
imap <Esc>Ol +
imap <Esc>OS -

" open file show last position
if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif

set nocompatible

execute pathogen#infect()
call pathogen#helptags()

syntax on

filetype plugin indent on

match DiffAdd '\%>80v.*'


" HIGHLIGHT STUFF
highlight Pmenu ctermbg=grey gui=bold
highlight PmenuSel ctermfg=red gui=bold
highlight Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow


" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" MAP STUFF
map ,da :match DiffAdd ''<CR>
map ,ad :match DiffAdd '\%>81v.*'<CR>
map ,b :BufExplorer<CR>
map :wq :w
map <silent> ,V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
map ,w :%s/\s\+$//g<CR>
nnoremap <silent> <Leader>a :!git grep --color <cword><CR>

" Used to easily switch between OSS standards
" Ruby
map <F8> :set ts=2 sw=2 sts=2 expandtab<CR>
" GNU emacs indentation
map <F9> :set ts=8 sw=4 sts=4 noexpandtab<CR>
" Kernel indentation
map <F10> :set ts=8 sw=8 sts=0 noexpandtab<CR>



" SET STUFF
set pastetoggle=<F6>
set hlsearch
set list
set expandtab
set smarttab
set listchars=tab:>-,trail:.,extends:>,precedes:<,nbsp:%
set wildmode=longest,list



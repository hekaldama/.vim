set nocompatible

execute pathogen#infect()
call pathogen#helptags()

syntax on

filetype plugin indent on

match DiffAdd '\%>80v.*'


" HIGHLIGHT STUFF
highlight Pmenu ctermbg=grey gui=bold
highlight PmenuSel ctermfg=red gui=bold


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


" SET STUFF
set pastetoggle=<F6>
set hlsearch
set list
set expandtab
set smarttab
set listchars=tab:>-,trail:.,extends:>,precedes:<,nbsp:%
set wildmode=longest,list

" 显示行号
set number

" Tab大小
set tabstop=4
set softtabstop=4

" 缩进大小
set shiftwidth=4

" 使用C/C++语言的自动缩进方式
set cindent

" 用space替代tab
set expandtab

" 高亮搜索结果
set hlsearch

" 搜索忽略大小写
set ignorecase

" 关闭自动注释补全
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" 设置leader
let mapleader=' '

" 映射ESC键
imap ;j <ESC>

" 映射上下左右键
imap ˙ <Left>
imap ∆ <Down>
imap ˚ <Up>
imap ¬ <Right>

" 运行程序
map <D-r> :!./a<CR>

" 切换窗口(上一个)
map <D-1> <C-w>p

" 切换窗口(下一个)
map <D-2> <C-w>w

" solarized {

    " 配色
    syntax enable
    set background=dark
    colorscheme solarized

" }

" airline {

    " 关闭空白行提示
    let g:airline#extensions#whitespace#enabled=0
    
" }

" ultisnips {

    let g:UltiSnipsExpandTrigger="<D-'>"    

" }

" youcompleteme {

    let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    let g:ycm_key_list_stop_completion=['<D-y>']
    map <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" }

" nerdtree {

    autocmd vimenter * NERDTree
    map <C-n> :NERDTreeToggle<CR>

" }

" nerdcommenter {

    let g:NERDSpaceDelims = 1
    let g:NERDCompactSexyComs = 1
    let g:NERDDefaultAlign = 'left'
    let g:NERDCommentEmptyLines = 1

" }

" autopairs {

    let g:AutoPairsShortcutToggle='<C-k>'

" }

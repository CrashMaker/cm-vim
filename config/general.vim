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
let mapleader='\'

" 编译程序
map <F5> :!make<CR>

" 运行程序
map <F6> :!./a<CR>

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

" youcompleteme {

    let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    map <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" }

" nerdtree {

    autocmd vimenter * NERDTree
    map <leader>nt :NERDTreeToggle<CR>

" }

" nerdcommenter {

    let g:NERDSpaceDelims = 1
    let g:NERDCompactSexyComs = 1
    let g:NERDDefaultAlign = 'left'
    let g:NERDCommentEmptyLines = 1

" }

" autopairs {

    let g:AutoPairsShortcutToggle='<C-]>'

" }

" tagbar {

    let g:tagbar_ctags_bin='/usr/local/bin/ctags'
    let g:tagbar_width=30
    autocmd FileType c,cpp nested :TagbarOpen
    map <leader>tb :TagbarToggle<CR>

" }

" a.vim {

    map <leader>aa :A<CR>
    map <leader>as :AS<CR>

"}

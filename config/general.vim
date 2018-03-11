" 窗口大小
set lines=60 columns=180

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

" 补全时不打开preview窗口
set completeopt-=preview

" 关闭自动注释补全
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" 当新建 .h .cpp文件时自动调用SetTitle函数添加注释头  
autocmd BufNewFile *.h,*.cpp exec ":call SetTitle()"

" 设置leader
let mapleader = '\'

" 编译程序
nnoremap <F5> :!make<CR>

" 运行程序
nnoremap <F6> :!./a<CR>

" molokai {

    " 配色
    syntax enable
    set background=dark
    colorscheme molokai

" }

" airline {

    let g:airline_theme = 'molokai'
    let g:airline#extensions#whitespace#enabled = 0
    let g:airline#extensions#tabline#enabled = 1
    
" }

" youcompleteme {

    let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" }

" nerdtree {

    autocmd vimenter * NERDTree

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

" }

" a.vim {

    nnoremap <leader>aa :A<CR>
    nnoremap <leader>as :AS<CR>

" }

" ack.vim {

    nnoremap <leader>ff :Ack!<Space>

" }

" vim-cpp-enhanced-highlight {

    let g:cpp_class_scope_highlight = 1
    let g:cpp_member_variable_highlight = 1
    let g:cpp_class_decl_highlight = 1

" }

" vim-bufkill {

    nnoremap <C-S-x> :BD<cr>
    nnoremap <C-S-n> :bp<cr>
    nnoremap <C-S-m> :bn<cr>

" }

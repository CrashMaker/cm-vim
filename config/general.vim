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

" solarized {

    " 配色
    syntax enable
    set background=dark
    colorscheme solarized

" }

" airline {

    " 关闭空白行提示
    let g:airline#extensions#whitespace#enabled = 0
    " 打开tabline
    let g:airline#extensions#tabline#enabled = 1
    
" }

" ultisnips {

    let g:UltiSnipsExpandTrigger="<s-tab>"    

" }


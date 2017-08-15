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
set formatoptions-=cro

" solarized {

    syntax enable
    set background=dark
    colorscheme solarized

" }

" airline {

    let g:airline#extensions#tabline#enabled = 1

" }


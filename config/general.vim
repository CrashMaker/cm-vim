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

" 设置leader为','
let mapleader = ','

" 自动补全括号
inoremap ( <c-r>=AutoPair('(', ')')<CR>
inoremap { <c-r>=AutoPair('{', '}')<CR>
inoremap [ <c-r>=AutoPair('[', ']')<CR>
inoremap " <c-r>=AutoPair('"', '"')<CR>
inoremap ' <c-r>=AutoPair("'", "'")<CR>
inoremap < <c-r>=AutoPair('<', '>')<CR>

" 光标在{}中间的时候按回车自动换行
inoremap <CR> <c-r>=AutoCR()<CR>

" solarized {

    " 配色
    syntax enable
    set background = dark
    colorscheme solarized

" }

" airline {

    " 关闭空白行提示
    let g:airline#extensions#whitespace#enabled = 0
    
" }

" ultisnips {

    let g:UltiSnipsExpandTrigger = "<D-'>"    

" }

" youcompleteme {

    let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" }

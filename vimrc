" 插件包
if filereadable(expand("~/.cm-vim/config/plug.vim"))
        source ~/.cm-vim/config/plug.vim
endif

" 函数
if filereadable(expand("~/.cm-vim/config/func.vim"))
        source ~/.cm-vim/config/general.vim
endif

" 一般配置
if filereadable(expand("~/.cm-vim/config/general.vim"))
        source ~/.cm-vim/config/general.vim
endif

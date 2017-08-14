" 插件包
if filereadable(expand("~/.cm-vim/config/plug.vim"))
        source ~/.vimrc.before
endif

" 一般配置
if filereadable(expand("~/.cm-vim/config/general.vim"))
        source ~/.vimrc.bundles
endif

" 加入注释   
func SetComment()  
    call setline(1,"/*================================================================")   
    call append(line("."),   "*   Copyright (C) ".strftime("%Y")." CrashMaker. All rights reserved.")  
    call append(line(".")+1, "*   ")   
    call append(line(".")+2, "*   文件名称：".expand("%:t"))   
    call append(line(".")+3, "*   创 建 者：CrashMaker")  
    call append(line(".")+4, "*   创建日期：".strftime("%Y年%m月%d日"))   
    call append(line(".")+5, "*   描    述：")   
    call append(line(".")+6, "*")  
    call append(line(".")+7, "================================================================*/")   
    call append(line(".")+8, "")  
endfunc  

" 定义函数SetTitle，自动插入文件头   
func SetTitle()  
    call SetComment()  
    if expand("%:e") == 'h'   
        call append(line(".")+9, "#ifndef ".toupper(expand("%:t:r"))."_H")   
        call append(line(".")+10, "#define ".toupper(expand("%:t:r"))."_H")   
        call append(line(".")+11, "")   
        call append(line(".")+12, "")   
        call append(line(".")+13, "")   
        call append(line(".")+14, "#endif // ".toupper(expand("%:t:r"))."_H")   
    elseif &filetype == 'cpp'   
        call append(line(".")+9, "#include \"".expand("%:t:r").".h\"")   
        call append(line(".")+10, "")
        call append(line(".")+11, "")
    endif  
endfunc  

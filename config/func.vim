" 自动补全括号（光标在行末或光标下一个字符是空格）
function AutoPair(open, close)
  let line = getline('.')
  if col('.') > strlen(line) || line[col('.') - 1] == ' '
    return a:open.a:close."\<ESC>i"
  else
    return a:open
  endif
endf

" 光标在{}中间的时候按回车自动换行
function AutoCR()
  let line = getline('.')
  if line[col('.') + 1] == '{' || line[col('.') - 1] == '}'
    return "\<CR>\<CR>\<ESC>O" 
  else
    return "\<CR>"
  endif
endf


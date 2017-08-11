for f in split(glob('$HOME/.cm-vim/config/*.vim'), '\n')
  exe 'source' f
endfor

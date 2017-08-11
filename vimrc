for f in split(glob('$HOME/.cm-vim/*.vim'), '\n')
  exe 'source' f
endfor

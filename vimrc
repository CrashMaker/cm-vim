for f in split(glob('$HOME/.cm-vim/settings/*.vim'), '\n')
  exe 'source' f
endfor

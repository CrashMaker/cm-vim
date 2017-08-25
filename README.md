# cm-vim
这是一个在Mac OSX系统下MacVim的C++开发配置。

## 安装
先在终端运行
```bash
    curl https://bit.ly/cm-vim -L > cm-vim.sh && sh cm-vim.sh
```
然后在MacVim下运行
    :PluginInstall

## 所需的软件(请按顺序进行安装)
### Homebrew
```bash
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### MacVim
```bash
    brew install macvim
```

### CMake
```bash
    brew install cmake
```

### CTags
```bash
    brew install ctags
```

## YouCompleteMe编译命令
```bash
    cd ~/.vim/bundle/YouCompleteMd
    ./install.py --clang-completer
```



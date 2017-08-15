#!/usr/bin/env bash

#   vim配置安装脚本
#
#   脚本安装成功后需要在vim中运行":PluginInstall"命令下载插件
#
#   此脚本仿照"spf13-vim"的安装脚本，感谢其制作人

############################  SETUP PARAMETERS
app_name='cm-vim'
[ -z "$APP_PATH" ] && APP_PATH="$HOME/.cm-vim"
[ -z "$REPO_URI" ] && REPO_URI='https://github.com/CrashMaker/cm-vim.git'
debug_mode='0'
fork_maintainer='0'
[ -z "$VUNDLE_URI" ] && VUNDLE_URI="https://github.com/VundleVim/Vundle.vim.git"

############################  BASIC SETUP TOOLS
msg() {
    printf '%b\n' "$1" >&2
}

success() {
    if [ "$ret" -eq '0' ]; then
        msg "\33[32m[✔]\33[0m ${1}${2}"
    fi
}

error() {
    msg "\33[31m[✘]\33[0m ${1}${2}"
    exit 1
}

debug() {
    if [ "$debug_mode" -eq '1' ] && [ "$ret" -gt '1' ]; then
        msg "An error occurred in function \"${FUNCNAME[$i+1]}\" on line ${BASH_LINENO[$i+1]}, we're sorry for that."
    fi
}

program_exists() {
    local ret='0'
    command -v $1 >/dev/null 2>&1 || { local ret='1'; }

    # fail on non-zero return value
    if [ "$ret" -ne 0 ]; then
        return 1
    fi

    return 0
}

program_must_exist() {
    program_exists $1

    # throw error on non-zero return value
    if [ "$?" -ne 0 ]; then
        error "You must have '$1' installed to continue."
    fi
}

variable_set() {
    if [ -z "$1" ]; then
        error "You must have your HOME environmental variable set to continue."
    fi
}

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
    ret="$?"
    debug
}

############################ SETUP FUNCTIONS

do_remove() {
    if [ -e "$1" ] || [ -e "$2" ]; then
        msg "Attempting to remove your original vim configuration."
        for i in "$1" "$2"; do
            [ -e "$i" ] && [ ! -L "$i" ] && rm -rf "$i";
        done
        ret="$?"
        success "Your original vim configuration has been remove."
        debug
    fi
}

sync_repo() {
    local repo_path="$1"
    local repo_uri="$2"
    local repo_name="$3"

    msg "Trying to update $repo_name"

    if [ ! -e "$repo_path" ]; then
        mkdir -p "$repo_path"
        git clone "$repo_uri" "$repo_path"
        ret="$?"
        success "Successfully cloned $repo_name."
    else
        cd "$repo_path" && git pull origin master
        ret="$?"
        success "Successfully updated $repo_name"
    fi

    debug
}

create_symlinks() {
    local source_path="$1"
    local target_path="$2"

    lnif "$source_path/vimrc"         "$target_path/.vimrc"

    ret="$?"
    success "Setting up vim symlinks."
    debug
}

############################ MAIN()
variable_set "$HOME"
program_must_exist "vim"
program_must_exist "git"

do_backup       "$HOME/.vim" \
                "$HOME/.cm-vim"

sync_repo       "$APP_PATH" \
                "$REPO_URI" \
                "$app_name"

sync_repo       "$HOME/.vim/bundle/Vundle.vim" \
                "$VUNDLE_URI" \
                "vundle"

create_symlinks "$APP_PATH" \
                "$HOME"

msg             "\nThanks for installing $app_name."

#!/bin/sh

set -e

ARCH=$(uname -m)

if [ $ARCH = arm64]; then
    if [ ! -f /opt/homebrew/bin/brew]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    if [ ! -f /opt/homebrew/bin/git ]; then
        brew install git
    fi
else
    if [ ! -f /usr/local/bin/brew]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    if [ ! -f /usr/local/bin/git ]; then
        brew install git
    fi
fi

if [ ! -d ~/dotfiles ]; then
    cd $HOME && git clone git@github.com:arisahyper/dotfiles.git
fi

brew bundle -v --file=~/dotfiles/Brewfile

if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

# Rustup
if [ ! -f ~/.cargo/bin/rustup ]; then
    curl https://sh.rustup.rs -sSf | sh
fi

# link to package
stow -v -d ~/dotfiles/packages -t ~ zsh git
stow -v -d ~/dotfiles/packages -t ~/.config config

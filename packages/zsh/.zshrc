# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias bl="black ."

# Node
export PATH=$PATH:/Users/arisahyper/Desktop/test2/node_modules/.bin
export PATH=$HOME/.nodebrew/current/bin:$PATH
alias pre="npx prettier --write ."

# yarn
alias yd="yarn dev"

# pnpm
alias pd="pnpm dev"
alias pdo="pnpm dev --open"
alias fl="pnpm format && pnpm lint"

# Go
export PATH="$PATH:/usr/local/go/bin"
alias gof="gofmt -w ."
alias goi="touch main.go && go mod init"
alias gor="go run ."

# Rust
alias cn="cargo new"
alias cr="cargo run"
alias ci="cargo install"
alias cc="cargo check"

# flutter
export PATH="$PATH:/Users/arisahyper/flutter/bin"

# zsh
alias ll="ls -l"
alias lh="ls -lh"
alias la="ls -a"
alias lg="ls -la | grep"
alias dir="ls"

# git
alias ga="git add"
alias gc='git commit'
alias gcm='git commit -m "'
alias gp="git push"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gco="git checkout"
alias gl="git log --oneline --graph"
alias gdh="git diff HEAD^"
alias gpu="git push -u origin" # git push -u orign <branch name>
alias zgit='cat ~/.zprezto/modules/git/alias.zsh | grep "alias "'

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"

# Docker
alias dc="docker-compose"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Google Cloud SDK.
if [ -f '/Users/arisahyper/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/arisahyper/google-cloud-sdk/path.zsh.inc'; fi

# gcloud.
if [ -f '/Users/arisahyper/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/arisahyper/google-cloud-sdk/completion.zsh.inc'; fi

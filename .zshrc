autoload -Uz colors && colors

# プロンプト展開を有効にする
setopt PROMPT_SUBST

# gitブランチを取得する関数
git_branch() {
    git branch 2>/dev/null | grep '^*' | colrm 1 2
}

# プロンプト設定
PROMPT='%F{050}%~:%f%F{030}$(git_branch)%f $'

# 直前と同じコマンドはヒストリに追加しない
setopt hist_ignore_dups

# 他のzshと履歴を共有する
setopt share_history

# 即座に履歴を保存する
setopt inc_append_history

# ヒストリ設定
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

alias g='git'
alias gb='git branch'
alias gs='git status'
alias gst='git stash'
alias gsw='git switch'
alias gcmsg='git commit -m'
alias gpoh='git push origin HEAD'
alias gpfoh='git push --force-with-lease origin HEAD'
alias gprc='gh pr create'

alias vi='nvim'
alias vim='nvim'
alias view='nvim -R'
alias sz='source ~/dev/dotfiles/.zshrc'
alias vz='vim ~/dev/dotfiles/.zshrc'

autoload -Uz colors && colors

# TODO: Linux用なのでMacなどでインストールするものを変えるようにする
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source "/home/linuxbrew/.linuxbrew/opt/zsh-git-prompt/zshrc.sh"

PROMPT="%F{030}%n@%m%f:%F{050}%c%f $(git_super_status) $"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit
  compinit
fi

alias sz='source ~/dotfiles/.zshrc'
alias vz='vim ~/dotfiles/.zshrc'
alias python='python3'

# Gitリポジトリ以外ではGitのステータスを表示しない
git_prompt() {
  if [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = true ]; then
    PROMPT="%F{030}%n@%m%f:%F{050}%c%f $(git_super_status) $"
  else
    PROMPT="%F{030}%n@%m%f:%F{050}%c%f $"
  fi
}

precmd() {
  git_prompt
}

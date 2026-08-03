#!/usr/bin/env bash
set -euo pipefail

# スクリプト自身の場所 = dotfilesリポジトリのルートを求める
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# src→dst にシンボリックリンクを張る共通関数(srcが無ければ何もしない)
link() {
  local src="$1" dst="$2"
  [ -e "$src" ] || return 0
  mkdir -p "$(dirname "$dst")"   # リンク先の親ディレクトリを用意
  ln -sfn "$src" "$dst"          # -s:symlink -f:上書き -n:既存リンクを追わない
  echo "linked: $dst -> $src"
}

# ① ホーム直下のドットファイル → ~/
for f in .zshrc .vimrc .tmux.conf; do link "$DOTFILES_DIR/$f" "$HOME/$f"; done

# ② ディレクトリごと → ~/.config/
for dir in nvim; do link "$DOTFILES_DIR/$dir" "$HOME/.config/$dir"; done

# ③ herdr は config.toml だけリンク(socket/log等が同ディレクトリに書かれるため)
mkdir -p "$HOME/.config/herdr"
link "$DOTFILES_DIR/herdr/config.toml" "$HOME/.config/herdr/config.toml"

echo "dotfiles install: done"

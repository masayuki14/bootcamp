# 補完の設定

# zsh-completions プラグインを利用
fpath=("$HOME/.zsh/zsh-completions-osx" $fpath)
fpath=("$HOME/.zsh/zsh-completions/src" $fpath)

# Initialize.
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

# Enable completion selection with arrow keys.
# 候補が2以上でカーソル選択
zstyle ':completion:*:default' menu select=2

# Show uppercase candidates with lowercase input.
# 大文字と小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

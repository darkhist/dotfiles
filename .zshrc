# ZINIT
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# ALIASES
source $HOME/dotfiles/.aliases

# PURE PROMPT 
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure
PURE_PROMPT_SYMBOL=

# PLUGINS
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# LOAD SHELL INTEGRATIONS
autoload -U compinit && compinit
source <(fzf --zsh)

# STYLE COMPLETIONS
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no 

# EDITORS
VISUAL='code --wait'
EDITOR='/usr/bin/vim'
export VISUAL 
export EDITOR

# KEYBINDS
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[b' backward-word
bindkey '^[f' forward-word
bindkey '^F' autosuggest-accept

# HISTORY
HISTSIZE=1000
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups 
setopt hist_ignore_dups
setopt hist_save_no_dups 
setopt hist_find_no_dups

# PATH
export PATH="/usr/local/opt/postgresql@16/bin:$PATH"

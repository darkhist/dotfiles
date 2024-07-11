# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZINIT
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# THEME
zinit ice depth=1; zinit light romkatv/powerlevel10k

# PLUGINS
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# LOAD COMPLETIONS
autoload -U compinit && compinit

# STYLE COMPLETIONS
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no 

# ALIASES
source $HOME/.aliases

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

# SHELL INTEGRATIONS
source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

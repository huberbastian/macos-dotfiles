# https://github.com/zdharma-continuum/zinit?tab=readme-ov-file#manual
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Syntax highlighting theme
source $HOME/.zsh_syntax_themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

# Load Plugins
autoload -U compinit; compinit
zinit snippet OMZP::git
zinit light Aloxaf/fzf-tab
zinit light MichaelAquilina/zsh-you-should-use
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-history-substring-search

# Env Vars

export EDITOR="nvim"
export JAVA_HOME="/opt/homebrew/opt/openjdk"
export PNPM_HOME="/Users/basti/Library/pnpm"

export PATH="$HOME/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$PNPM_HOME/bin:$PATH"

# Aliases

alias vi="nvim"
alias svi="sudo nvim"
alias ls="gls --color"
alias la="gls -la --color"

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Oh My Posh Theme
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config '~/.config/ohmyposh/cattppuccin.omp.yaml')"
fi

# ------------------------------------------------------------------------------
# 1. Environment & Path
# ------------------------------------------------------------------------------
export LANG=en_US.UTF-8

if [ -f "/opt/homebrew/bin/brew" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH="$HOME/.local/bin:$PATH"

# ------------------------------------------------------------------------------
# 2. OMZ
# ------------------------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------------------------
# 3. Modern Unix Tools
# ------------------------------------------------------------------------------
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"

# FZF Configuration
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
source <(fzf --zsh)

# ------------------------------------------------------------------------------
# 4. Aliases
# ------------------------------------------------------------------------------
alias v="nvim"
alias lg="lazygit"
alias ll="ls -lah"

# ------------------------------------------------------------------------------
# 5. Shell Extensions
# ------------------------------------------------------------------------------
source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# ------------------------------------------------------------------------------
# 6. Credentials
# ------------------------------------------------------------------------------
export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"

# ------------------------------------------------------------------------------
# 7. SDKs & Languages
# ------------------------------------------------------------------------------
[ -d "$HOME/go/bin" ] && export PATH="$PATH:$HOME/go/bin"

ca() { eval "$($HOMEBREW_PREFIX/bin/conda shell.zsh hook)"; }

# ------------------------------------------------------------------------------
# 8. Local overrides
# ------------------------------------------------------------------------------
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

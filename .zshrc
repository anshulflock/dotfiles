# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Powerlevel10k theme.
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Load Oh-My-Zsh.
source $ZSH/oh-my-zsh.sh

# Source iOS tools and versions file (custom configurations).
if [[ -f ~/iOSFlockMail/TOOLS_VERSIONS_FILE ]]; then
  source ~/iOSFlockMail/TOOLS_VERSIONS_FILE
else
  echo "WARNING: ~/iOSFlockMail/TOOLS_VERSIONS_FILE not found."
fi

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Add paths.
export PATH="$HOME/.rvm/bin:$HOME/tools/node-v14.15.4-linux-x64/bin:$HOME/.rbenv/bin:$PATH"

# Initialize rbenv.
eval "$(rbenv init -)"


# Aliases
alias ..="cd .."
alias ls='eza -al --color=always --group-directories-first'
alias la='eza -a --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias lt='eza -aT --color=always --group-directories-first'
alias xcode="open -a Xcode"

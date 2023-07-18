# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# The following lines were added by compinstall
#
#zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors \
  "di=1;36" "ln=35" "so=32" "pi=33" "ex=31" "bd=34;46" "cd=34;43" \
  "su=30;41" "sg=30;46" "tw=30;42" "ow=30;43"

# Small letters will match small and capital letters. (i.e. capital letters match only capital letters.)
	zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

	zstyle :compinstall filename "$HOME/.zshrc"

	autoload -Uz compinit
	compinit
	# End of lines added by compinstall

	# Set up the prompt

	autoload -Uz promptinit
	promptinit
	prompt adam1

	setopt histignorealldups sharehistory

	# Use emacs keybindings even if our EDITOR is set to vi
	bindkey -e

	# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
	HISTSIZE=1000
	SAVEHIST=1000
	HISTFILE=~/.zsh_history


path+=(
		$HOME/.local/bin
		$HOME/.spicetify
)

export EDITOR='/usr/bin/nvim'
export SUDO_EDITOR=${EDITOR}
export VISUAL=${EDITOR}


alias sudo='sudo ' #This is needed to be able to use aliases with sudo
alias ls="lsd"
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias 'ls -la'='ls -latr'
alias vim='nvim'
alias "git log"="git log --all --oneline --graph"
alias search="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

alias bpy="curl -X POST https://bpa.st/curl -F 'raw=<-' -F 'lexer=python'"
alias bpsh="curl -X POST https://bpa.st/curl -F 'raw=<-' -F 'lexer=bash'"
alias bp="curl -X POST https://bpa.st/curl -F 'raw=<-' -F 'lexer=text'"

alias create_venv='python3 -m venv venv'
alias activate='. venv/bin/activate' 
alias build='python3 setup.py bdist_wheel'

alias update='yay -Syu --noconfirm'

alias "df -h"="duf"
#alias start_forti='systemctl start openfortivpn@config.service'
#alias stop_forti='systemctl stop openfortivpn@config.service'

now=$(date +"%m_%d_%Y")
alias dump_error_logs="journalctl -b-1 -k --no-pager > error_${now}.log"
#source ~/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel9k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f "/home/cosmi/.config/lf/lficons" ] && source "/home/cosmi/.config/lf/lficons"

#source ~/zsh-wakatime/zsh-wakatime.plugin.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

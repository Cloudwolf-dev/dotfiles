# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
#export PATH="$HOME/.nix-profile/bin:$PATH"
export ZSH="/usr/share/oh-my-zsh"
eval "$(zoxide init zsh)"
source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#Rebinds
#rebind back kill word to ctrl+backspace
bindkey "\C-h" backward-kill-word

if [ -e /home/cloudwolf/.nix-profile/etc/profile.d/nix.sh ]; then . /home/cloudwolf/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

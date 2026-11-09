# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/opt/orbstack/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
export NVM_SYMLINK_CURRENT=true
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

export JAVA_OPTS="-Xms512m -Xmx4g -XX:+UseG1GC -XX:+UseStringDeduplication"


export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Wallpaper switcher: `wall` = random, `wall forrest` = pick by name, `wall ls` = list
wall() {
  local dir=~/Pictures/Wallpapers
  if [[ "$1" == "ls" ]]; then ls "$dir"; return; fi
  local pic
  if [[ -n "$1" ]]; then pic=$(ls "$dir"/*"$1"* 2>/dev/null | head -1); else pic=$(ls "$dir"/* | sort -R | head -1); fi
  [[ -z "$pic" ]] && { echo "no wallpaper matching '$1'"; return 1; }
  osascript -e "tell application \"System Events\" to tell every desktop to set picture to POSIX file \"$pic\""
  echo "wallpaper: ${pic:t}"
}

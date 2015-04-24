# Where the magic happens.
export DOTFILES=~/.dotfiles

# Add binaries into the path
# PATH=$DOTFILES/bin:$PATH
# export PATH
# Remove an entry from $PATH
# Based on http://stackoverflow.com/a/2108540/142339
function path_remove() {
  # PATH => /bin:/opt/a dir/bin:/sbin
  WORK=:$PATH:
  # WORK => :/bin:/opt/a dir/bin:/sbin:
  REMOVE='$1'
  WORK=${WORK/:$REMOVE:/:}
  # WORK => :/bin:/sbin:
  WORK=${WORK%:}
  WORK=${WORK#:}
  path=$WORK
  echo "$path"
}
# Source all files in "source"
function src() {
  # local file
  # if [[ -n "$1" ]]; then
  source "$DOTFILES/source/60_oh-my-zsh.sh"
  source "$DOTFILES/source/99_direnv.sh"
  # else
    # for file in $DOTFILES/source/*; do
      # source "$file"
    # done
  # fi
}

# # Run dotfiles script, then source.
# function dotfiles() {
#   $DOTFILES/bin/dotfiles "$@" && src
# }

src



export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Git bash autocomplete
source ~/dotfiles/git-completion.bash

# Custom prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[00;34m\]\u@\h\[\033[00m\]:\[\033[00;36m\]\w\[\033[00m\]\$ '

# Custom aliases
source ~/.bash_aliases

export EDITOR="vim"

export PATH="/usr/lib/android-sdk-linux/platform-tools:$PATH"

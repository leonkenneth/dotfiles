if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Git bash autocomplete
source ~/dotfiles/git-completion.bash

# Colors
source ~/.bash_colors

# Custom prompt
export PS1='$( clr_cyan $( clr_bold \u )$( clr_cyan @\h ) ) $( clr_blue \w ) $( clr_magentab $( __git_ps1 " (%s)" ) ) \$ '

# Custom aliases
source ~/.bash_aliases

export EDITOR="vim"

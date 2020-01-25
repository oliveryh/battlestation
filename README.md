# BattleStation

BattleStation is a salt configuration for my Ubuntu workstation.

## Running a State

1. Navigate to the location of the checkout out git repo
2. Type in the following command `sudo salt-call state.apply --local --retcode-passthrough --file-root=$(pwd)/state <state>`

## States

### gnome

* Made it possible to Shift+Tab and Ctrl+Shift+Tab between terminal tabs

### nautilus

* Typeahead enabled during search (disabled in later versions of linux)

### zsh

* Installed zsh
* Added oh-my-zsh
* Allowed custom zsh config to be added from git
* Added peco history
* Default to agnoster theme (installed needed fonts)
* Added pluging: zsh-syntax-highlighting

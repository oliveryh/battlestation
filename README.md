# BattleStation

BattleStation is a salt configuration for my Ubuntu workstation.

## Running a State

1. Navigate to the location of the checkout out git repo
2. Type in the following command `sudo salt-call state.apply --local --retcode-passthrough --file-root=$(pwd)/state --pillar-root=$(pwd)/pillar <state>`

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

### tmux

Inspired from: [This post](https://zserge.com/posts/tmux/)

* Mod+1..9: switch windows from 1 to 9
* Mod+, and Mod+.: switch to next/prev windows
* Mod+HJKL or arrows: switch between panes
* Mod+N: create new window
* Mod+F: toggle full-screen
* Mod+V: split vertically
* Mod+B: split horizontally (“bisect”)
* Mod+X: close pane
* Mod+/: enter copy and scroll mode
* Mod+< and Mod+>: move current window to the left/right
* Mod+Shift+HJKL or arrows: move pane to the left/right/up/down
* Mod+Shift+X: close window
* Mod+Shift+R: rename window

TODO: Install tree
TODO: Install espanso

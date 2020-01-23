# BattleStation

BattleStation is a salt configuration for my Ubuntu workstation.

## Running a State

1. Navigate to the location of the checkout out git repo
2. Type in the following command `sudo salt-call state.apply --local --retcode-passthrough --file-root=$(pwd)/state <state>`

## States

### zsh

* Installed zsh
* Added oh-my-zsh
* Allowed custom zsh config to be added from git

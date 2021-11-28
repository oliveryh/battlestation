sudo salt-call --local state.apply $1 --log-level debug -c $(pwd) --file-root=$(pwd)/state

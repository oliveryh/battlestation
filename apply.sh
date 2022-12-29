sudo salt-call state.apply --local --retcode-passthrough --file-root=$(pwd)/state --pillar-root=$(pwd)/pillar $1

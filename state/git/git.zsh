alias gfu="git commit --fixup"
alias grbas="git rebase -i --autosquash origin/main"
alias gpf="git push origin $(git_current_branch) --force-with-lease"

function watch_run() {
  if [ $# -eq 0 ]; then                                                                                                                                                                                                                     
    branch_name=$(git rev-parse --abbrev-ref HEAD)                                                                                                                                                                                          
    echo "Detecting branch $branch_name"                                                                                                                                                                                                    
  else                                                                                                                                                                                                                                      
    branch_name=$1                                                                                                                                                                                                                          
    echo "Using parsed branch $branch_name"                                                                                                                                                                                                 
  fi
  function still_running() {
    any_failed=$(gh run list --limit 100 | grep "$branch_name" | grep -q "failure"; echo $?)
    any_running=$(gh run list --limit 100 | grep "$branch_name" | grep -q "in_progress"; echo $?)
    ! (( $any_failed )) && echo "Detected failed runs" && return 1
    ! (( $any_running )) && echo "Detected runs in progress" && return 0
    echo "Exiting Loop" && return 1
  }
  while still_running; do
    echo "working"
    sleep 30
  done
  echo "Run complete"
  afplay /System/Library/Sounds/Funk.aiff
  sleep 1
  say github run is complete
}

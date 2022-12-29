{% set user = salt["pillar.get"]("user", "oliver") %}
composure_git:
  git.cloned:
    - name: https://github.com/erichs/composure
    - target: /opt/composure

composure_zsh:
  file.append:
    - name: {{ salt["user.info"](user).home }}/.oh-my-zsh/custom/composure.zsh
    - text: source /opt/composure/composure.sh

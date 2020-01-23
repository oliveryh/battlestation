{% set user = salt["pillar.get"]("user", "oliver") %}
zsh_oh-my-zsh_custom:
  file.managed:
    - source: salt://{{ tpldir }}/setup.zsh
    - name: ~{{ user }}/.oh-my-zsh/custom/setup.zsh

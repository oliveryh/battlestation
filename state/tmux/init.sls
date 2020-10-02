{% set user = salt["pillar.get"]("user", "oliver") %}
tmux_install:
  pkg.installed:
    - name: tmux

tmux_configure:
  file.managed:
    - source: salt://{{ tpldir }}/.tmux.conf
    - name: ~{{ user }}/.tmux.conf

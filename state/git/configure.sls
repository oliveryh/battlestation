git.delta.install:
  pkg.installed:
    - name: git-delta

git.delta.config.pager:
  git.config_set:
    - name: core.pager
    - value: delta
    - global: True

git.delta.config.filter:
  git.config_set:
    - name: interactive.diffFilter
    - value: delta --color-only
    - global: True

{% set user = salt["pillar.get"]("user", "oliver") %}
git.alias:
  file.managed:
    - source: salt://{{ tpldir }}/git.zsh
    - name: ~{{ user }}/.oh-my-zsh/custom/git.zsh

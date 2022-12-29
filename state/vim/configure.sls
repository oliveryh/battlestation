{% set user = salt["pillar.get"]("user", "oliver") %}
vim.configure:
  file.managed:
    - source: salt://{{ tpldir }}/.vimrc
    - name: ~{{ user }}/.vimrc

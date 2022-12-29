{% set user = salt["pillar.get"]("user", "oliver") %}
zsh_install:
  pkg.installed:
    - name: zsh

zsh_default-shell:
  cmd.run:
    - name: chsh -s $(which zsh)
    - runas: {{ user }}
    - require:
      - pkg: zsh_install

zsh_oh-my-zsh_install:
  cmd.run:
    - name: wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    - runas: {{ user }}

zsh_oh-my-zsh_enable:
  cmd.run:
    - name: cp ~{{ user }}/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    - runas: {{ user }}
    - require:
      - cmd: zsh_oh-my-zsh_install

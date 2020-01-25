{% set user = salt["pillar.get"]("user", "oliver") %}
zsh_oh-my-zsh_custom:
  file.managed:
    - source: salt://{{ tpldir }}/setup.zsh
    - name: ~{{ user }}/.oh-my-zsh/custom/setup.zsh

zsh_oh-my-zsh_agnoster-font:
  pkg.installed:
    - name: fonts-powerline

zsh_dir:
  file.directory:
    - name: ~{{ user }}/.zsh

zsh_peco:
  pkg.installed:
    - name: peco

zsh_peco_git:
  git.cloned:
    - name: https://github.com/jimeh/zsh-peco-history.git
    - target: {{ salt["user.info"](user).home }}/.zsh/zsh-peco-history

zsh_peco_config:
  file.managed:
    - contents: |
        source ~/.zsh/zsh-peco-history/zsh-peco-history.zsh
    - name: ~{{ user }}/.oh-my-zsh/custom/peco.zsh

zsh_syntax-highlighting_install:
  git.cloned:
    - name: https://github.com/zsh-users/zsh-syntax-highlighting.git
    - target: {{ salt["user.info"](user).home }}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

zsh_syntax-highlighting_enable:
  cmd.run:
    - name: sed -i 's/plugins=(/&zsh-syntax-highlighting /' ~{{ user }}/.zshrc

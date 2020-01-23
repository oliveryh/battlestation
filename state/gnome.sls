gnome_tweak:
  pkg.installed:
    - name: gnome-tweak-tool

gnome_theme_repo:
  pkgrepo.managed:
    - ppa: tista/adapta

gnome_theme_install:
  pkg.installed:
    - name: adapta-gtk-theme
    - require:
      - pkgrepo: gnome_theme_repo

gnome_theme_apply:
  cmd.run:
    - name: dconf write /org/gnome/desktop/interface/gtk-theme "'Adapta-Eta'"
    - require:
      - pkg: gnome_theme_install

gnome_terminal_tabs:
  cmd.run:
    - name: |
        gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ next-tab '<Primary>Tab'
        gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ prev-tab '<Primary><Shift>Tab'

{% set path = salt['cmd.shell']('espanso path config') %}

espanso.default:
  file.managed:
    - source: salt://{{ tpldir }}/default.yml
    - name: {{ path }}/default.yml

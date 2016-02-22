saltpad-dependency:
  pkg.installed:
    - pkgs:
      - salt-api

saltpad-install:
  git.latest:
    - name: https://github.com/Lothiraldan/saltpad.git
    - branch: {{ salt['pillar.get']('saltpad.version','v0.2') }}
    - depth: 1
    - target: /opt/saltpad
    - require_in:
      - file: saltpad-configuration

saltpad-configuration:
  file.managed:
    - name: /opt/saltpad/settings.json
    - source: salt://saltpad/files/setting.json
    - template: jinja

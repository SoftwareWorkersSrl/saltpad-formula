
saltpad-dependency:
  pkg.installed:
    - pkgs:
      - salt-api

saltpad-saltapi:
  service.running:
    - name: salt-api
    - require:
      - pkg: saltpad-dependency
      - pkg: salt-master
      - file: salt-master
      - file: remove-old-master-conf-file


# Reclass formula
Configure and install saltpad for interacting with a saltstack master.

## Dependency
 - salt-formula:
The following options are required on pillar's master:
  master:
    rest_tornado:
      port: 8000
      ssl_crt: /etc/pki/api/certs/server.crt
      ssl_key: /etc/pki/api/certs/server.key
      debug: False
      disable_ssl: False
  external_auth:
    pam:
      saltUnixUser:
          - .*
          - '@runner'
          - '@wheel

It is possile to install the salt-api as well as waiting for the salt-formula configuration with the option install_dependency: true.

Otherwise call the saltdap/dependency directly on the remote master (as well as with the salt-formula with the previous examples).

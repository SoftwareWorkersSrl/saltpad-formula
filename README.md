# Reclass formula
Configure and install saltpad for interacting with a saltstack master.

## Dependency
 - salt-formula:
The following options are required on pillar's master:
  master:
    rest_tornado:
      port: 5417
      host: 127.0.0.1
      ssl_crt: /etc/pki/api/certs/server.crt
      ssl_key: /etc/pki/api/certs/server.key
      debug: False
      disable_ssl: False
      websockets: True
      cors_origin: "'*'"
  external_auth:
    pam:
      saltUnixUser:
          - .*
          - '@runner'
          - '@wheel'

''notes'': the saltUnixUser cannot be root, but anything else will be fine.

It is possile to install the salt-api as well as waiting for the salt-formula configuration with the option install_dependency: true.

Otherwise call the saltdap/dependency directly on the remote master (as well as with the salt-formula with the previous examples).

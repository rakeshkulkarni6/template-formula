AD-Domain-Services:
  win_servermanager.installed:
    - name: AD-Domain-Services
    - force: False
    - recurse: True

DNS:
  win_servermanager.installed:
    - name: DNS
    - force: False
    - recurse: True

RSAT-NIS:
  win_servermanager.installed:
    - name: RSAT-NIS
    - force: False
    - recurse: False

install_ADDSForest:
  cmd.run:
    - source: '%userprofile%\Appdata\Local\Temp\Kitchen\srv\salt\pillar\production\ADDSscript.ps1'
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"
    - runas: "vagrant"
    - password: "vagrant"

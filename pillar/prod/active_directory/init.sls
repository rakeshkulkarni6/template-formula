{% from "pillar/prod/active_directory/map.jinja" import forest with context %}
{% from "pillar/prod/active_directory/map.jinja" import command with context %}
import_module:
  cmd.run:
    - name: "Import-Module ADDSDeployment;"
    - shell: powershell
    - env:
      - ExecutionPolicy: "bypass"
    - runas: "vagrant"
    - password: "vagrant"
install_ds:
  cmd.run:
    - name: {{ command }}
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"
    - runas: "vagrant"
    - password: "vagrant"
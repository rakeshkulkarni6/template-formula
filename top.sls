{% if saltenv == 'dev' %}{% set env = 'dev'  %}{% endif -%}
{% if saltenv == 'production' %}{% set env = 'production'  %}{% endif -%}
{{ saltenv }}:
   '*':
    - pillar.production.domaincontroller
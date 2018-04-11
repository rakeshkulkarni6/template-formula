{{ saltenv }}:
   '*':
    - pillar.prod.domaincontroller
    - pillar.prod.active_directory
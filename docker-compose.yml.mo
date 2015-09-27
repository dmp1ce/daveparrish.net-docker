build:
  build: containers/build/.
  volumes_from:
    - source
  command: /home/hakyll/start_hakyll.sh
source:
  build: containers/source/.
  command: "true"
  volumes:
    - {{#DEVELOPMENT}}./containers/source/hakyll:{{/DEVELOPMENT}}/home/hakyll/hakyll
web:
  build: containers/web/.
  volumes_from:
    - source
  environment:
    - VIRTUAL_HOST={{PROJECT_NGINX_PROXY_VIRTUAL_HOSTS}}

# vim:syntax=yaml

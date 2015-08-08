# daveparrish.net

Instructions on how to build my blog for daveparrish.net

## Requirments

- [docker](https://www.docker.com/)
- [docker-compose](https://www.docker.com/docker-compose)

## Build

`docker-compose build`

## Run

1. `docker-compose up -d`
2. `docker run -d -p 80:80 -e DEFAULT_HOST=daveparrish.local -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy`

I use the [jwilder/nginx-proxy](https://hub.docker.com/r/jwilder/nginx-proxy/) container to easily host my site and several other sites I may need to run.

## Access

Visit the IP in your browser for example: `curl http://127.0.0.1`

OR

Set your DNS to so that the domain name daveparrish.local points to your IP.

```
# /etc/hosts
127.0.0.1  daveparrish.local
```

And visit `http://daveparrish.local`

The domain name `daveparrish.local` can be changed in the `docker-compose.yml` file to something like `daveparrish.net`.

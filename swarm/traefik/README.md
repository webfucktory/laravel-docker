## Remote Server

```shell
docker stack deploy -c .yml traefik
```

## Local

```shell
export $(grep -v '^#' .env | xargs) && \
docker stack deploy -c local.yml traefik
```

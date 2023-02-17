## Local

```shell
export $(grep -v '^#' .env | xargs) && \
docker stack deploy -c local.yml traefik
```

```shell
export $(grep -v '^#' .env | xargs) && \
docker stack deploy -c stack.yml traefik
```

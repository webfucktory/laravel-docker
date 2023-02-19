## Create `.env`

```shell
cp example.local.env .env
```

## Create stack

```shell
export $(grep -v '^#' .env | xargs) && \
docker stack deploy -c .yml -c local.yml laravel_db
```

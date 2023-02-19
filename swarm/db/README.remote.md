## Create `.env`

```shell
cp example.remote.env .env
```

## Create stack

```shell
export $(grep -v '^#' .env | xargs) && \
docker stack deploy -c .yml -c remote.yml laravel_db
```

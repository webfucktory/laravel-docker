```shell
cp example.local.env .env
```

```shell
docker secret create laravel_env .env
```

# App

```shell
export $(grep -v '^#' .env | xargs) && \
docker stack deploy -c app.yml -c webserver.local.yml laravel
```

```shell
docker service update --network-add laravel_db_maria laravel_app
```

# (optional) Queue worker

```shell
export $(grep -v '^#' .env | xargs) && \
docker stack deploy -c queue.yml laravel
```

```shell
docker service update --network-add laravel_db_maria laravel_queue
```

# (optional) Schedule runner

```shell
export $(grep -v '^#' .env | xargs) && \
docker stack deploy -c queue.yml laravel
```

```shell
docker service update --network-add laravel_db_maria laravel_schedule
```

```shell
docker secret rm laravel_env && \
docker secret create laravel_env .env
```

```shell
docker stack rm laravel
```

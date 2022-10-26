[Documentation](https://docs.docker.com/)

# Laravel Docker

## Build

```shell
export \
    IMAGE_REPOSITORY=*IMAGE_REPOSITORY* \
    PROJECT_ROOT=..
```

### Base

```shell
docker build \
  -t $IMAGE_REPOSITORY/base:latest \
  -f Dockerfile \
  $PROJECT_ROOT
```

### App

```shell
docker build \
  -t $IMAGE_REPOSITORY/app:latest \
  -f app.Dockerfile \
  .
```

### Webserver

```shell
docker build \
  -t $IMAGE_REPOSITORY/webserver:latest \
  -f webserver.Dockerfile \
  .
```

### Queue Worker

```shell
docker build \
  -t $IMAGE_REPOSITORY/queue:latest \
  -f queue.Dockerfile \
  .
```

### Schedule Runner

```shell
docker build \
  -t $IMAGE_REPOSITORY/schedule:latest \
  -f schedule.Dockerfile \
  .
```

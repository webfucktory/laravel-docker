From `<project root>` path, run:

### Base

```shell
docker build \
  -f .docker/build/Dockerfile \
  -t BASE_IMAGE \
  .
```

### App

From `<project root>/.docker/build` path, run:

```shell
docker build \
  -f app.Dockerfile \
  -t BASE_IMAGE/app \
  .
```

### Webserver

From `<project root>/.docker/build` path, run:

```shell
docker build \
  -f webserver.Dockerfile \
  -t BASE_IMAGE/webserver \
  .
```

### Queue Worker

From `<project root>/.docker/build` path, run:

```shell
docker build \
  -f queue.Dockerfile \
  -t BASE_IMAGE/queue \
  .
```

### Schedule Runner

From `<project root>/.docker/build` path, run:

```shell
docker build \
  -f schedule.Dockerfile \
  -t BASE_IMAGE/schedule \
  .
```

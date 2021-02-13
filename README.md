# Purpose
Docker image with python and poetry installed. Intended uses are as a build environment, when creating and publishing wheels or as a stage image during docker build. Here is an example of a `poetry` build inside `docker` build:

```Dockerfile
FROM mopano/poetry:1.1.4

WORKDIR /app

RUN python3 -m venv .venv

COPY pyproject.toml poetry.lock /app/

RUN poetry install --no-interaction --no-ansi --no-root

COPY . /app

RUN . .venv/bin/activate && \
    pytest -v && \
    poetry build 
```



# CI
https://cloud.drone.io/mopano/poetry

# Docker Hub
https://hub.docker.com/repository/docker/mopano/poetry

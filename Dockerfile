FROM ubuntu:20.04 as base

ENV PYTHONFAULTHANDLER=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONHASHSEED=random \
    PYTHONBUFFERED=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=90 \
    POETRY_VERSION=1.1.4

RUN printenv && \
    apt-get update && \
    apt-get install -y python3 python3-dev python3-venv python3-pip && \
    pip3 install "poetry==${POETRY_VERSION}" && \
    python3 --version && \
    pip3 --version

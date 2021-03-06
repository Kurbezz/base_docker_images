ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}-slim

RUN apt-get update \
    && apt-get install --no-install-recommends -y python3-dev libpq-dev libffi-dev \
    && rm -rf /var/lib/apt/lists/*

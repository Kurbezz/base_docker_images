ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}-slim

RUN apt-get update \
    && apt-get install --no-install-recommends -y gcc build-essential python3-dev libpq-dev libffi-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install poetry wheel --no-cache-dir

ENV VENV_PATH=/opt/venv

RUN python -m venv $VENV_PATH \
    && . /opt/venv/bin/activate \
    && pip install asyncpg --no-cache-dir

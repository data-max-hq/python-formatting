FROM python:3.8

ENV POETRY_VERSION 1.1.14
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        # deps for installing poetry
        curl \
        # deps for building python deps
        build-essential

RUN pip install poetry==$POETRY_VERSION

COPY poetry.lock pyproject.toml ./

# install runtime deps - uses $POETRY_VIRTUALENVS_IN_PROJECT internally
RUN poetry install --no-dev

# will become mountpoint of our code
WORKDIR /app
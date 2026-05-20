FROM python:3.13-slim-bookworm
RUN apt-get update && apt-get install -y gcc g++ make curl zlib1g-dev libjpeg-dev libxml2-dev libxslt-dev libfreetype6-dev libmupdf-dev tzdata vim-tiny && rm -rf /var/lib/apt/lists/* \
    && ln -s /usr/bin/vim.tiny /usr/local/bin/vi \
    && ln -s /usr/bin/vim.tiny /usr/local/bin/vim
ENV C_INCLUDE_PATH=/usr/include/freetype2
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /usr/local/bin/
ENV UV_SYSTEM_PYTHON=1
WORKDIR /app
COPY entry.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/entry.sh"]

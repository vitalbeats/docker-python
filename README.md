# Python with uv

This repository provides a pre-installed version of [uv](https://docs.astral.sh/uv/), on top of Python 3.13, for development and CI use.

## Usage
In your project, just start `FROM vitalbeats/python:1.x.x`.

## Building and Pushing

We build the image locally and push it to Docker Hub.

Note: The user must be logged in into our public docker registry via `docker login`.

We always build for `linux/amd64` because our target environments (dev, QA, and production) are x86-based.

```bash
docker build . --platform=linux/amd64 --tag=vitalbeats/python:1.x.x
docker push vitalbeats/python:1.x.x

docker build . --platform=linux/amd64 --tag=vitalbeats/python:latest
docker push vitalbeats/python:latest
```
## Running Locally
```bash
docker run \
    --platform=linux/amd64 \
    --name vb_python \
    -it --rm vitalbeats/python:1.x.x \
    --version
```

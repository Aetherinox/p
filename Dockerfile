FROM python:3.13

ARG VERSION
ENV VERSION=${VERSION:-main}

RUN pip install --upgrade pip
RUN python -m pip install git+https://github.com/Aetherinox/p@$VERSION

ENTRYPOINT ["keeweb-ghcr-server"]
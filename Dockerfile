FROM python:3.13.0

ARG VERSION
ENV VERSION=${VERSION:-master}

RUN pip install --upgrade pip
RUN python --version
RUN python -m pip install git+https://github.com/Aetherinox/p@$VERSION

ENTRYPOINT ["keeweb-ghcr-server"]
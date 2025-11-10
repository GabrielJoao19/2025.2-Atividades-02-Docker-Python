FROM fedora:latest

RUN dnf install -y python3 python3-pip && dnf clean all

RUN mkdir -p /app

WORKDIR /app

CMD ["python3"]
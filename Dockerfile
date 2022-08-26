FROM ubuntu:22.04
EXPOSE 873
RUN apt-get update
RUN apt-get install -y rsync=3.2.3-8ubuntu3
ENTRYPOINT rsync --daemon --no-detach
HEALTHCHECK CMD rsync rsync://localhost

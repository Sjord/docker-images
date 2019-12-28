FROM debian:bullseye

# Tell dpkg not to ask questions
ENV DEBIAN_FRONTEND noninteractive

# This forces dpkg not to call sync() after package extraction and speeds up install
RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup

# We don't need an apt cache in a container
RUN echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache

ADD etc/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y vim && apt-get clean

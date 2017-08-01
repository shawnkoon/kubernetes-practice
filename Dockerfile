FROM ubuntu:16.04
LABEL maintainer.name="shawnkoon" \
      version="1.0" \
      description="Ubuntu Xenial Image with kops installed"

# Basic package updates.
RUN apt update && \
    apt upgrade -y

# Install kops.
RUN apt install wget -y && \
    wget https://github.com/kubernetes/kops/releases/download/1.6.1/kops-linux-amd64 && \
    chmod +x kops-linux-amd64 && \
    mv kops-linux-amd64 /usr/local/bin/kops

# Adding shawnkoon user.
RUN useradd -ms /bin/bash shawnkoon
USER shawnkoon

# Copy current folder into docker.
COPY . /home/shawnkoon/kub
WORKDIR /home/shawnkoon/kub
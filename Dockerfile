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

# Install kubectl
RUN wget -O kubectl https://storage.googleapis.com/kubernetes-release/release/v1.7.0/bin/linux/amd64/kubectl && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/kubectl

# Install pip && AWS CLI
RUN apt install python-pip -y && \
    pip install --upgrade pip && \
    pip install awscli

# Adding shawnkoon user.
RUN useradd -ms /bin/bash shawnkoon
USER shawnkoon

# Copy current folder into docker.
COPY . /home/shawnkoon/kub
WORKDIR /home/shawnkoon/kub
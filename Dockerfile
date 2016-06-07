FROM ubuntu

MAINTAINER wujiming wzslw@163.com


RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update && apt-get install --no-install-recommends -y \
python \
python-openssl \
libffi-dev \
python-gtk2 \
python-appindicator \
libnss3-tools

# Clean apt cache
#RUN apt-get clean

# Copy file to container
RUN mkdir -p /opt/XX-Net
COPY code /opt/XX-Net/code
COPY launcher /opt/XX-Net/launcher
COPY data /opt/XX-Net/data
ADD start /opt/XX-Net/start
RUN chmod +x /opt/XX-Net/start

EXPOSE 8085 8086 8087
# Commands when creating a new container
WORKDIR /opt/XX-Net/
CMD ["/bin/bash", "/opt/XX-Net/start"]

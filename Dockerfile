FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git 


RUN pip install PyYAML --break-system-packages

# RUN pip3 install PyYAML

COPY  feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

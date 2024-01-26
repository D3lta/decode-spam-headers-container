FROM alpine:3.19

RUN apk add --no-cache --update \
python3 \
py3-pip \
py3-tldextract \
py3-dateutil \
py3-packaging \
py3-dnspython \
py3-requests \
py3-colorama \
git \
&& rm -rf ~/.cache/* /usr/local/share/man /tmp/*

RUN mkdir -p /opt && chown 1000:1000 /opt
WORKDIR /opt
USER 1000:1000

RUN ls -all && \
git clone https://github.com/mgeeky/decode-spam-headers.git && \
ls -all && \
cd decode-spam-headers && \
python3 decode-spam-headers.py --help

ENTRYPOINT ["python3", "/opt/decode-spam-headers/decode-spam-headers.py"]

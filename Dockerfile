FROM debian:latest
LABEL MAINTAINER="https://github.com/DG_SM4RT/Tphisher"

WORKDIR /Tphisher/
ADD . /Tphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./Tphisher.sh"]

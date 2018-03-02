FROM debian:latest
MAINTAINER Hǎiliàng Wáng <w@h12.me>

ENV HUGO_VER 0.19
ENV HUGO_DEB hugo_${HUGO_VER}_amd64.deb

ADD https://github.com/spf13/hugo/releases/download/v$HUGO_VER/$HUGO_DEB .
RUN dpkg --install $HUGO_DEB
RUN rm $HUGO_DEB

WORKDIR /work

ENTRYPOINT [ "hugo" ]

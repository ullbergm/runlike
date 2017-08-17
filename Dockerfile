FROM docker:1.6.2

RUN apk update \
  && apk upgrade \
  && apk update \
  && apk add --no-cache python py-setuptools \
  && /usr/bin/easy_install-2.7 pip \
  && pip install runlike

ENTRYPOINT ["runlike"]

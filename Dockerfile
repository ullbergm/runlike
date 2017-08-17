FROM docker:1.6.2

ADD runlike /app/runlike
ADD setup.py /app
ADD setup.cfg /app
ADD requirements.txt /app

RUN apk update \
  && apk upgrade \
  && apk update \
  && apk add --no-cache python py-setuptools \
  && /usr/bin/easy_install-2.7 pip \
  && pip install /app

ENTRYPOINT ["runlike"]

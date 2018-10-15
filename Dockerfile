FROM python:3.7-alpine
RUN apk add --no-cache alpine-sdk bash libffi-dev ncurses openssl-dev
COPY bashrc /root/.bashrc
CMD /bin/bash

FROM python:3.7-alpine
RUN apk add --no-cache alpine-sdk bash libffi-dev ncurses openssl-dev vim
COPY bashrc /root/.bashrc
COPY vimrc /root/.vimrc
CMD /bin/bash

FROM python:3.7-alpine
RUN apk add --no-cache alpine-sdk bash libffi-dev ncurses openssl-dev vim
COPY bashrc /root/.bashrc
COPY vimrc /root/.vimrc
COPY wakatime.cfg /root/.wakatime.cfg
RUN ln -sf /usr/bin/vim /usr/bin/vi
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN pip install wakatime
RUN vim +BundleInstall +qall
CMD /bin/bash

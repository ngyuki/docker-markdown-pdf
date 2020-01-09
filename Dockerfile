FROM node

MAINTAINER Toshiyuki Goto <ngyuki.jp@gmail.com>

RUN npm install -g --ignore-scripts markdown-pdf &&\
    rm -fr /root/.npm/

RUN node /usr/local/lib/node_modules/markdown-pdf/node_modules/phantomjs-prebuilt/install.js &&\
    rm -fr rm -fr /tmp/phantomjs/

RUN apt-get update &&\
    apt-get install -y fonts-noto-cjk &&\
    rm -fr /var/lib/apt/lists/*

CMD ["/bin/bash"]

FROM node:lts-alpine3.9
LABEL maintainer="mitsu-ksgr <k.sgr.mitsu.g@gmail.com>"

RUN npm install --silent -g @graphidocs/docs \
    && rm -rf ~/.npm/cache/*

RUN mkdir /work
WORKDIR /work

CMD ["graphidocs", "-h"]


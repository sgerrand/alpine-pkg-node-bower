FROM alpine:3.6
RUN apk --no-cache add ca-certificates nodejs wget && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-node-bower/master/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-node-bower/releases/download/1.8.0-r0/node-bower-1.8.0-r0.apk && \
    apk add node-bower-1.8.0-r0.apk

# alpine-pkg-node-bower

[![CircleCI](https://img.shields.io/circleci/project/sgerrand/alpine-pkg-node-bower/master.svg)](https://circleci.com/gh/sgerrand/alpine-pkg-node-bower)

This is [Bower][bower] as an Alpine Linux package.

## Releases

See the [releases page](https://github.com/sgerrand/alpine-pkg-node-bower/releases) for the latest
download links.

## Installing

The current installation method for these packages is to pull them in using
`wget` or `curl` and install the local file with `apk`:

    apk --no-cache add ca-certificates
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-node-bower/master/sgerrand.rsa.pub
    wget https://github.com/sgerrand/alpine-pkg-node-bower/releases/download/1.7.9-r0/node-bower-1.7.9-r0.apk
    apk add node-bower-1.7.9-r0.apk

[bower]: https://bower.io

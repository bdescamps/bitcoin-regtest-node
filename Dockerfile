FROM alpine:3.7
RUN apk add --no-cache bash
RUN apk add curl
COPY . /app
RUN echo 'we are running some # of cool things'
RUN ls -la /app/bitcoin-core/bin
RUN /bin/sh -c "./app/bitcoin-core/bin/bitcoind -regtest -datadir=/app/bitcoin-node/"

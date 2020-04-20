FROM debian:buster-slim
EXPOSE 18443 18444
COPY . /app
RUN chmod +x /app/bitcoin-core/*
RUN ldd ./app/bitcoin-core/bin/bitcoind
CMD /bin/sh -c "./app/bitcoin-core/bin/bitcoind -regtest -datadir=/app/bitcoin-node/"

#!/bin/bash

cat >~/zcash.conf <<EOF
rpcbind=${RPC_HOST}
rpcport=${RPC_PORT}
rpcuser=${RPC_USER}
rpcpassword=${RPC_PASSWORD}
EOF

exec lightwalletd \
  --no-tls-very-insecure \
  --zcash-conf-path="$(realpath ~)/zcash.conf" \
  --log-file /dev/stdout \
  --log-level "${LOG_LEVEL:-2}"

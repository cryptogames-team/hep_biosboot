#!/bin/bash
DATADIR="./blockchain"
CURRENTDIR=${PWD##*/}
PRODUCER_PUB_KEY="EOS6cLudtPX4k7ntjuZkZRdm8nMJXhyPsRanLU6WvM2joCPALG1yT"
PRODUCER_PRIV_KEY="5KQYMVS2DMaUfsNstZYU7gLYQXRPs5QWT9rQTR6QhmUTu6HbjX9"
HTTP_PORT=8030
P2P_PORT=9030
if [ ! -d $DATADIR ]; then
  mkdir -p $DATADIR;
fi

nodeos \
--signature-provider $PRODUCER_PUB_KEY=KEY:$PRODUCER_PRIV_KEY \
--plugin eosio::producer_plugin \
--plugin eosio::producer_api_plugin \
--plugin eosio::chain_plugin \
--plugin eosio::chain_api_plugin \
--plugin eosio::http_plugin \
--plugin eosio::history_api_plugin \
--plugin eosio::history_plugin \
--data-dir $DATADIR"/data" \
--blocks-dir $DATADIR"/blocks" \
--config-dir $DATADIR"/config" \
--producer-name $CURRENTDIR \
--http-server-address 0.0.0.0:$HTTP_PORT \
--p2p-listen-endpoint 0.0.0.0:$P2P_PORT \
--access-control-allow-origin=* \
--contracts-console \
--http-validate-host=false \
--verbose-http-errors \
--enable-stale-production \
--p2p-peer-address 14.63.34.160:9010 \
--p2p-peer-address 14.63.34.160:9011 \
--p2p-peer-address 14.63.34.160:9012 \
--p2p-peer-address 14.63.34.160:9014 \
--p2p-peer-address 14.63.34.160:9015 \
--p2p-peer-address 14.63.34.160:9016 \
--p2p-peer-address 14.63.34.160:9017 \
--p2p-peer-address 14.63.34.160:9018 \
--p2p-peer-address 14.63.34.160:9020 \
--p2p-peer-address 14.63.34.160:9019 \
--p2p-peer-address 14.63.34.160:9021 \
--p2p-peer-address 14.63.34.160:9023 \
--p2p-peer-address 14.63.34.160:9022 \
--p2p-peer-address 14.63.34.160:9024 \
--p2p-peer-address 14.63.34.160:9025 \
--p2p-peer-address 14.63.34.160:9026 \
--p2p-peer-address 14.63.34.160:9027 \
--p2p-peer-address 14.63.34.160:9028 \
--p2p-peer-address 14.63.34.160:9029 \
--p2p-peer-address 14.63.34.160:9032 \
--p2p-peer-address 14.63.34.160:9031 \
--p2p-peer-address 14.63.34.160:9013 \
--hard-replay-blockchain \
>> $DATADIR"/nodeos.log" 2>&1 & \
echo $! > $DATADIR"/eosd.pid"



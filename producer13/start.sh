
#!/bin/bash
DATADIR="./blockchain"
CURRENTDIR=${PWD##*/}
PRODUCER_PUB_KEY="EOS7qnzroPJzo2qdC1VV15GpfYy3t4U483dzud4cG1USsmkaT3e2L"
PRODUCER_PRIV_KEY="5JQ2J3RBvC1tPS6xNmMNxtsR7MvD7LVrzx1Hu9jXu4EJ42zuo2K"
HTTP_PORT=8023
P2P_PORT=9023
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
--p2p-peer-address 14.63.34.160:9024 \
--p2p-peer-address 14.63.34.160:9022 \
--p2p-peer-address 14.63.34.160:9025 \
--p2p-peer-address 14.63.34.160:9026 \
--p2p-peer-address 14.63.34.160:9027 \
--p2p-peer-address 14.63.34.160:9028 \
--p2p-peer-address 14.63.34.160:9029 \
--p2p-peer-address 14.63.34.160:9030 \
--p2p-peer-address 14.63.34.160:9032 \
--p2p-peer-address 14.63.34.160:9031 \
--p2p-peer-address 14.63.34.160:9013 \
>> $DATADIR"/nodeos.log" 2>&1 & \
echo $! > $DATADIR"/eosd.pid"

                      

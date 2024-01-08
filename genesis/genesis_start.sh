#!/bin/bash
DATADIR="./blockchain"

if [ ! -d $DATADIR ]; then
  mkdir -p $DATADIR;
fi

nodeos \
--genesis-json $DATADIR"/../../genesis.json" \
--signature-provider EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV=KEY:5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3 \
--plugin eosio::producer_plugin \
--plugin eosio::producer_api_plugin \
--plugin eosio::chain_plugin \
--plugin eosio::chain_api_plugin \
--plugin eosio::http_plugin \
--plugin eosio::history_api_plugin \
--plugin eosio::history_plugin \
--filter-on "*" \
--data-dir $DATADIR"/data" \
--blocks-dir $DATADIR"/blocks" \
--config-dir $DATADIR"/config" \
--producer-name eosio \
--http-server-address 0.0.0.0:8888 \
--p2p-listen-endpoint 0.0.0.0:9010 \
--access-control-allow-origin=* \
--contracts-console \
--http-validate-host=false \
--verbose-http-errors \
--enable-stale-production \
--p2p-peer-address 14.63.34.160:9013 \
--p2p-peer-address 14.63.34.160:9011 \
--p2p-peer-address 14.63.34.160:9012 \
--p2p-peer-address 14.63.34.160:9014 \
--p2p-peer-address 14.63.34.160:9015 \
--p2p-peer-address 14.63.34.160:9016 \
--p2p-peer-address 14.63.34.160:9017 \
--p2p-peer-address 14.63.34.160:9018 \
--p2p-peer-address 14.63.34.160:9019 \
--p2p-peer-address 14.63.34.160:9021 \
--p2p-peer-address 14.63.34.160:9020 \
--p2p-peer-address 14.63.34.160:9022 \
--p2p-peer-address 14.63.34.160:9024 \
--p2p-peer-address 14.63.34.160:9023 \
--p2p-peer-address 14.63.34.160:9025 \
--p2p-peer-address 14.63.34.160:9026 \
--p2p-peer-address 14.63.34.160:9027 \
--p2p-peer-address 14.63.34.160:9028 \
--p2p-peer-address 14.63.34.160:9029 \
--p2p-peer-address 14.63.34.160:9030 \
--p2p-peer-address 14.63.34.160:9032 \
--p2p-peer-address 14.63.34.160:9031 \
--p2p-peer-address 14.63.34.160:9033 \
--p2p-peer-address 14.63.34.160:9034 \
--p2p-peer-address 14.63.34.160:9035 \
>> $DATADIR"/nodeos.log" 2>&1 & \
echo $! > $DATADIR"/eosd.pid"


#! /bin/bash

#contract
contract=arb

#account
account=testarb11112

#network
if [[ "$1" == "mainnet" ]]; then 
    url=http://telos.caleos.io
    network="Telos Mainnet"
elif [[ "$1" == "testnet" ]]; then
    url=https://testnet.telos.caleos.io
    network="Telos Testnet"
elif [[ "$1" == "local" ]]; then
    url=http://127.0.0.1:8888
    network="Local"
else
    echo "need network"
    exit 0
fi

echo ">>> Deploying $contract contract to $account on $network..."

# eosio v1.8.0
cleos -u $url set contract -f --suppress-duplicate-check $account ./build/$contract/ $contract.wasm $contract.abi -p $account

# cleos -u https://testnet.telos.caleos.io system newaccount  --stake-cpu "10.0000 TLOS" --stake-net "10.0000 TLOS" --buy-ram "10.0000 TLOS" captaincrypt testarb11112 EOS8mVDZewfPmWzmEQPkt9SedTAwH1KB5s3wuB1tKPcvbUhS2mxpy
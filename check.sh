cleos -u https://testnet.telos.caleos.io get code testarb11112 && shasum -a 256 ./build/arb/arb.wasm && ./build.sh && sleep 2 && shasum -a 256 ./build/arb/arb.wasm
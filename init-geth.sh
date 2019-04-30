#! /bin/bash
mkdir -p data
docker run -v $(pwd)/genesis.json:/genesis.json -v $(pwd)/data:/data -t ethereum/client-go:v1.8.27 init /genesis.json --datadir /data
docker run -v $(pwd)/keys:/keys -v $(pwd)/data:/data -t ethereum/client-go:v1.8.27 --datadir /data account import /keys/faucet/faucet-priv.txt --password /keys/faucet/faucet-pw.txt
# docker run -v $(pwd)/keys:/keys -v $(pwd)/data:/data -t ethereum/client-go --datadir /data account import /keys/deployer/deployer-priv.txt --password /keys/deployer/deployer-pw.txt
# docker run -v $(pwd)/data:/data -t ethereum/client-go init genesis.json --datadir /data
# ./geth account import 

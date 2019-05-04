#! /bin/bash

geth --etherbase $(cat keys/faucet/faucet-addr.txt) --mine --miner.threads 1 --networkid 65  --vmodule "miner=12" --datadir ./data --unlock $(cat keys/faucet/faucet-addr.txt) --password keys/faucet/faucet-pw.txt \
    --rpc \
    --rpcaddr '0.0.0.0' \
    --rpcport 8545 \
    --rpccorsdomain '*' \
    --ws \
    --wsaddr '0.0.0.0' \
    --wsorigins '*' \
    --nodiscover \
    --allow-insecure-unlock

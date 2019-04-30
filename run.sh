#! /bin/bash

docker run -v $(pwd)/data:/data -v $(pwd)/keys:/keys -t ethereum/client-go --etherbase $(cat keys/deployer/deployer-addr.txt) --mine --miner.threads 1 --networkid 66  --vmodule "miner=12" --datadir /data --unlock $(cat keys/faucet/faucet-addr.txt) --password /keys/faucet/faucet-pw.txt

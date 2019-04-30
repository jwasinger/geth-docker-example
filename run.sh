#! /bin/bash

geth --etherbase $(cat keys/deployer/faucet-addr.txt) --mine --miner.threads 1 --networkid 66  --vmodule "miner=12" --datadir ./data --unlock $(cat keys/faucet/faucet-addr.txt) --password keys/faucet/faucet-pw.txt

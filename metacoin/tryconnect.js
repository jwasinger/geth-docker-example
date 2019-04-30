var Web3 = require("web3");
var net = require("net");

let provider = new Web3.providers.IpcProvider("/home/ubuntu/projects/testnet/docker-compose/data/geth.ipc", net);
let web3 = new Web3(provider);
web3.eth.net.isListening()
   .then(() => console.log('is connected'))
   .catch(e => console.log('Wow. Something went wrong'));

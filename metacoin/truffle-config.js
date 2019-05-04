var Web3 = require("web3");
var net = require("net");

module.exports = {
  networks: {
    dev: {
	    /*
      provider: function() {
        return new Web3.providers.IpcProvider("/home/ubuntu/projects/geth-example/data/geth.ipc", net);
      },
      */
      host: "127.0.0.1",
      port: 8545,
      network_id: '65',
      from: '7976977ecf72519e656a27c16b8c406329e46b78'
    }
  }
};

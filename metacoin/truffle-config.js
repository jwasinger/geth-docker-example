var Web3 = require("web3");
var net = require("net");

module.exports = {
  networks: {
    dev: {
      provider: function() {
        return new Web3.providers.IpcProvider("/home/ubuntu/projects/geth-example/data/geth.ipc", net);
      },
      network_id: '66',
      from: '7976977ecf72519e656a27c16b8c406329e46b78'
    }
  }
};

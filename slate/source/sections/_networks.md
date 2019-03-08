# Networks


## SwapperD

*SwapperD* runs on two ports by default, <code>Mainnet</code> on 7927 and <code>Testnet</code> on 17927. We are working on adding a local environment, which will setup local *SwapperD* and blockchain nodes for testing. This <code>Local</code> network would be using 27927.


## SwapperD Desktop

Unlike *SwapperD*, *SwapperD Desktop* runs on a single port: 7928. In order to specify a network for the different requests, the query parameter `network` should be specified with values `"mainnet"` or `"testnet"`. If a network is not specified, the network will default to Mainnet.


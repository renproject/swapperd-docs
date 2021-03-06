# Installation

## SwapperD

> *SwapperD* currently supports macOS and Ubuntu. Run the following command in a terminal:

```shell
curl https://git.io/test-swapperd -sSLf | sh
```

*SwapperD* installs itself as a system service. In the event of an unexpected shutdown, *SwapperD* automatically restarts, and on the first HTTP request, it resumes all pending atomic swaps.

A `mnemonic` is generated during the installation process. *SwapperD* uses this `mnemonic`, with the `password` provided in the swap request, to generate it's Bitcoin and Ethereum private keys on-demand.

<aside class="success">
<i>SwapperD</i> never stores private keys to persistent storage. 
</aside>

<aside class="notice">
Backup the <code>mnemonic</code> generated during installation. Forgetting this could result in the loss of funds!
</aside>

## SwapperD Desktop

Prebuilt *SwapperD Desktop* for Windows, MacOS, and Linux can be downloaded from <https://github.com/renproject/swapperd-desktop/releases>. *SwapperD* will be installed along with the desktop application.


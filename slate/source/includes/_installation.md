# Installation

> Swapperd currently supports macOS and Ubuntu. Run the following command in a terminal:

```shell
curl https://git.io/test-swapperd -sSLf | sh
```

Swapperd installs itself as a system service. In the event of an unexpected shutdown, Swapperd automatically restarts, and on the first HTTP request, it resumes all pending atomic swaps.

A `mnemonic` is generated during the installation process. Swapperd uses this `mnemonic`, with the `password` provided in the swap request, to generate it's Bitcoin and Ethereum private keys on-demand.

<aside class="success">
Swapperd never stores private keys to persistent storage. 
</aside>

<aside class="notice">
Backup the <code>mnemonic</code> generated during installation. Forgetting this could result in the loss of funds!
</aside>


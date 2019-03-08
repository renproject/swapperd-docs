# Addresses

## `GET` All Token Addresses

> Getting the Testnet addresses from SwapperD

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/addresses
```

> The response body is structured like this:

```json
{
    "BTC": "mzKgUBHX7xSkKiNrdnxTe6fJKAcvFri2Tc",
    "DAI": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "DGX": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "ETH": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "GUSD": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "OMG": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "PAX": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "REN": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "TUSD": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "USDC": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "WBTC": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "ZRX": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47"
}
```

Retrieve the addresses associated with the wallet tokens.

**HTTP Endpoint:** `GET /addresses`

|         | SwapperD | SwapperD Desktop |
| ------- | -------- | ---------------- |
| Mainnet | http://localhost:7927/addresses | http://localhost:7928/addresses |
| Testnet | http://localhost:17927/addresses | http://localhost:7928/addresses?network=testnet |

<aside class="success">
Basic Authentication is required for these SwapperD HTTP endpoints. 
</aside>




## `GET` Single Token Address

> Getting the Kovan Ethereum Address from SwapperD

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/addresses/eth
```

> The response body is structured like this:

```
0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47
```

Retrieve the wallet address for a specific token.

**HTTP Endpoint:** `GET /addresses/{token}`

|         | SwapperD | SwapperD Desktop |
| ------- | -------- | ---------------- |
| Mainnet | http://localhost:7927/addresses/{token} | http://localhost:7928/addresses/{token} |
| Testnet | http://localhost:17927/addresses/{token} | http://localhost:7928/addresses/{token}?network=testnet |

<aside class="success">
Basic Authentication is required for these SwapperD HTTP endpoints. 
</aside>


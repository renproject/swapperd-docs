# Balances

## `GET` All Token Balances

> Getting all Testnet balances from SwapperD

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/balances
```

> The response body is structured like this:

```json
{
    "BTC": {
    "address": "mzKgUBHX7xSkKiNrdnxTe6fJKAcvFri2Tc",
    "decimals": 8,
    "balance": "19190614"
    },
    "WBTC": {
    "address": "0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47",
    "decimals": 18,
    "balance": "0"
  }
}
```

Retrieve all balance token balances in the wallet.

**HTTP Endpoint:** `GET /balances`

|         | SwapperD | SwapperD Desktop |
| ------- | -------- | ---------------- |
| Mainnet | http://localhost:7927/balances | http://localhost:7928/balances |
| Testnet | http://localhost:17927/balances | http://localhost:7928/balances?network=testnet |

<aside class="success">
Basic Authentication is required for these SwapperD HTTP endpoints. 
</aside>


## `GET` Single Token Balance

> Get the Testnet BTC balances from SwapperD

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/balances/btc
```

> The response body is structured like this:

```json
{
    "address": "mzKgUBHX7xSkKiNrdnxTe6fJKAcvFri2Tc",
    "decimals": 8,
    "balance": "19149414"
}
```

Retrieve a single token's balance.

**HTTP Endpoint:** `GET /balances/{token}`

|         | SwapperD | SwapperD Desktop |
| ------- | -------- | ---------------- |
| Mainnet | http://localhost:7927/balances/{token} | http://localhost:7928/balances/{token} |
| Testnet | http://localhost:17927/balances/{token} | http://localhost:7928/balances/{token}?network=testnet |

<aside class="success">
Basic Authentication is required for these SwapperD HTTP endpoints. 
</aside>

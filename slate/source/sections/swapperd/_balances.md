## Balances

### All Tokens

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

#### HTTP Request

`GET http://localhost:17927/balances`

<aside class="success">
This is a protected HTTP endpoint.
</aside>

### Single Token

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

#### HTTP Request

`GET http://localhost:17927/balances/{token}`

<aside class="success">
This is a protected HTTP endpoint.
</aside>


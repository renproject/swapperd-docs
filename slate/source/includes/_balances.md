# Balances

## All Tokens

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

### HTTP Request

`GET http://localhost:17927/balances`

<aside class="success">
This is a protected HTTP endpoint.
</aside>

## Single Token

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

### HTTP Request

`GET http://localhost:17927/balances/{token}`

<aside class="success">
This is a protected HTTP endpoint.
</aside>

# Addresses

## All Tokens

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

### HTTP Request

`GET http://localhost:17927/addresses`

<aside class="success">
This is a protected HTTP endpoint.
</aside>

## Single Token

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/addresses/eth
```

> The response body is structured like this:

```
0x5Ea5F67cC958023F2da2ea92231d358F2a3BbA47
```

### HTTP Request

`GET http://localhost:17927/addresses/{token}`

<aside class="success">
This is a protected HTTP endpoint.
</aside>

# Transfers

## Transferring funds

```shell
curl -i      \
     -X POST \
     -d '{
        "token": "BTC",
        "to": "mroqkoMK1L9ugjBbyJDh1B2kHmHPRzRjRS",
        "amount": "100000"
      }' \
     http://username:password@localhost:17927/transfers
```

### HTTP Request

`POST http://localhost:17927/transfers`

<aside class="success">
This is a protected HTTP endpoint.
</aside>

## Details of past transactions

```shell
curl -i      \
     -X GET \
     http://username:password@localhost:17927/transfers
```

> The response body is structured like this:

```json
{
    "transfers": [
    {
      "confirmations": 0,
      "timestamp": 1548828011,
      "to": "mroqkoMK1L9ugjBbyJDh1B2kHmHPRzRjRS",
      "from": "mzKgUBHX7xSkKiNrdnxTe6fJKAcvFri2Tc",
      "token": {
      "name": "BTC",
      "decimals": 8,
      "blockchain": "bitcoin"
      },
      "value": "100000",
      "txCost": {
      "BTC": "10000"
      },
      "txHash": "db7cf2e04d1fa5669323bcbba73b175938fa5dfe0d05ea1f216d151b7728f057"
      }
    ]
}
```

### HTTP Request

`GET http://127.0.0.1:17927/transfers`

<aside class="success">
This is a protected HTTP endpoint.
</aside>

# Info

## Getting information about Swapperd

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/info
```

> The response body is structured like this:

```json
{
    "version": "v1.0.0-beta.7",
    "bootloaded": true,
    "supportedBlockchains": [
      "ethereum", "bitcoin", "erc20"
    ],
    "supportedTokens": [
        {
            "name": "BTC",
            "decimals": 8,
            "blockchain": "bitcoin"
        },
        {
            "name": "ETH",
            "decimals": 18,
            "blockchain": "ethereum"
        },
        {
            "name": "WBTC",
            "decimals": 8,
            "blockchain": "erc20"
        }
    ]
}
```

### HTTP Request

`GET http://localhost:17927/info`

<aside class="success">
This is a protected HTTP endpoint.
</aside>


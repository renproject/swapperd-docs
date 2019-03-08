# Transfers

## `POST` Transferring funds

Transfer tokens out of the wallet.

> Transferring 0.001 Testnet BTC directly out of SwapperD

```shell
curl -i      \
     -X POST \
     -d '{
        "token": "BTC",
        "to": "mroqkoMK1L9ugjBbyJDh1B2kHmHPRzRjRS",
        "amount": "100000"
      }' \\
     http://username:password@localhost:17927/transfers
```

**HTTP Endpoint:** `POST /transfers`

|         | SwapperD | SwapperD Desktop |
| ------- | -------- | ---------------- |
| Mainnet | http://localhost:7927/transfers | http://localhost:7928/transfers |
| Testnet | http://localhost:17927/transfers | http://localhost:7928/transfers?network=testnet |

<aside class="success">
Basic Authentication is required for these SwapperD HTTP endpoints. 
</aside>

## `GET` Details of past transactions

See past transaction information.

> Getting the past Testnet transactions directly out of SwapperD

```shell
curl -i     \
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

**HTTP Endpoint:** `GET /transfers`

|         | SwapperD | SwapperD Desktop |
| ------- | -------- | ---------------- |
| Mainnet | http://localhost:7927/transfers | http://localhost:7928/transfers |
| Testnet | http://localhost:17927/transfers | http://localhost:7928/transfers?network=testnet |

<aside class="success">
Basic Authentication is required for these SwapperD HTTP endpoints. 
</aside>

# Info

## `GET` SwapperD Info

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

Check the status of SwapperD.

**HTTP Endpoint:** `GET /info`

|         | SwapperD | SwapperD Desktop |
| ------- | -------- | ---------------- |
| Mainnet | http://localhost:7927/info | http://localhost:7928/info |
| Testnet | http://localhost:17927/info | http://localhost:7928/info?network=testnet |

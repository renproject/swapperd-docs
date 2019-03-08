## Info

### Getting information about Swapperd

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

#### HTTP Request

`GET http://localhost:17927/info`

<aside class="success">
This is a protected HTTP endpoint.
</aside>
# ID

*SwapperD* uses a separate ECDSA keypair to sign messages, to prove identity. This id can be connected to KYC details, which allows KYC verification for atomic swaps (the developer/counter-party can make sure that the user is KYCd before doing atomic swaps with them), This is an entirely optional feature.

## `GET` SwapperD ID

This endpoint returns the base64 encoding of the public key.

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/id
```

> The response body is structured like this:

```
BLUOP6KMR7jMhhLzpvuUk9lCHjNsb2hn0FPNV7fJ/rHisJBs7CapPkqPCnrkGWBb9xS3ThO3ftUX85zrbXs2r+M=
```

**HTTP Endpoint:** `GET /id`

|         | SwapperD | SwapperD Desktop |
| ------- | -------- | ---------------- |
| Mainnet | http://localhost:7927/id | http://localhost:7928/id |
| Testnet | http://localhost:17927/id | http://localhost:7928/id?network=testnet |

<aside class="success">
Basic Authentication is required for these SwapperD HTTP endpoints. 
</aside>

## `GET` SwapperD ID as an Ethereum address

This endpoint returns the Ethereum address generated from the identity key pair.

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/id/eth
```

> The response body is structured like this:

```
0x80B7DF532FFDC5DF28D6bc98205b58daeE1E407f
```

**HTTP Endpoint:** `GET /id/eth`

|         | SwapperD | SwapperD Desktop |
| ------- | -------- | ---------------- |
| Mainnet | http://localhost:7927/id/eth | http://localhost:7928/id/eth |
| Testnet | http://localhost:17927/id/eth | http://localhost:7928/id/eth?network=testnet |

<aside class="success">
Basic Authentication is required for these SwapperD HTTP endpoints. 
</aside>

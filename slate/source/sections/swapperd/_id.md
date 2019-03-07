## ID

Swapperd uses a separate ECDSA keypair to sign messages, to prove identity. This id can be connected to KYC details, which allows KYC verification for atomic swaps (the developer/counter-party can make sure that the user is KYCd before doing atomic swaps with them), This is an entirely optional feature.

### Getting Swapperd's ID

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

#### HTTP Request

`GET http://localhost:17927/id`

<aside class="success">
This is a protected HTTP endpoint.
</aside>


### Getting Swapperd's ID as ethereum address

This endpoint returns the ethereum address generated from the identity key pair.

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/id/eth
```

> The response body is structured like this:

```
0x80B7DF532FFDC5DF28D6bc98205b58daeE1E407f
```

#### HTTP Request

`GET http://localhost:17927/id/eth`

<aside class="success">
This is a protected HTTP endpoint.
</aside>


# Sign

Swapperd uses the identity ECDSA keypair to sign messages, to prove identity. It supports signing base64, hex and JSON strings. This endpoint can be used to sign arbitrary messages, and no blockchain uses this key pair so it cannot lead to the loss of funds. 

## Getting Swapperd to sign a JSON message with the identity key pair.

Signing an arbitrary JSON object

```shell
curl -i     \
     -X POST \
     -d '{
        "hello": "world"
      }' \
     http://username:password@localhost:17927/sign/json
```

> The response body is structured like this:

```json
{
    "message": {
      "hello": "world"
    },
    "signature": "6JXLmjJMXSmmGO1zuYr7r3pTiQCRvAw8yr8wsv6r8MMM7r5508Kt0zmXjJECDoZ5IgLSo3T2ivZBAYoRjl6UPgA="
}
```

### HTTP Request

`GET http://localhost:17927/sign/json`

<aside class="success">
This is a protected HTTP endpoint.
</aside>

## Getting Swapperd to sign a hex message with the identity key pair.

Signing an arbitrary hex string

```shell
curl -i     \
     -X POST \
     -d '1234567890abcdef' \
     http://username:password@localhost:17927/sign/hex
```

> The response body is structured like this:

```json
{
    "message": "1234567890abcdef",
    "signature": "e759547d4fa1979260e84622ca732fa6149b95001dd33dd7aad50f1285334f605bb091616667cb7bf81e62d499ab23dac8336153fc85ce96690b01bee0620b4801"
    }
```

### HTTP Request

`GET http://localhost:17927/sign/hex`

<aside class="success">
This is a protected HTTP endpoint.
</aside>

## Getting Swapperd to sign a base64 message with the identity key pair.

Signing an arbitrary base64 string

```shell
curl -i     \
     -X POST \
     -d '1234567890abcdefghijklmNOPQRSTUVWXYZ' \
     http://username:password@localhost:17927/sign/base64
```

> The response body is structured like this:

```json
{
    "message": "1234567890abcdefghijklmNOPQRSTUVWXYZ",
    "signature": "Ey2OP+gS0ylrwxqJkMLbtita/dAuoxtUSF1vnUzMGiMLh/kDz3nBQ927ZE9XyfQqEeUWKEoicml+c59oJJ9jDQE="
}
```

### HTTP Request

`GET http://localhost:17927/sign/base64`

<aside class="success">
This is a protected HTTP endpoint.
</aside>



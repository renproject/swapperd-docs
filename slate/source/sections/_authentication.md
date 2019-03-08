# Authentication

> An example using HTTP Authentication:

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/balances
```

*SwapperD* protects all necessary endpoints with HTTP Basic Authentication. 

<aside class="success">
Every <code>password</code> that you enter gives you a different key pair for Ethereum and Bitcoin. There is no concept of a wrong password in <i>SwapperD</i>, this helps us to support multiple accounts and protecting the user from the rubber hammer attack. 
</aside>

Basic Authentication is unnecessary when interacting with *SwapperD Desktop* but protected endpoints will return a `401 Unauthorized` status when the wallet is locked.


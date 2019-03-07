# Authentication

> An example using HTTP Authentication:

```shell
curl -i     \
     -X GET \
     http://username:password@localhost:17927/balances
```

Swapperd protects all its endpoints with HTTP Basic Authentication. 

<aside class="success">
Every <code>password</code> that you enter gives you a different key pair for Ethereum and Bitcoin. There is no concept of a wrong password in Swapperd, this helps us to support multiple accounts and protecting the user from the rubber hammer attack. 
</aside>


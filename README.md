# Set-up

You need `ruby` and `bundler` (`gem install bundler`).

```sh
cd slate
bundle install --path vendor/bundle
```

# Building docs

```sh
make serve
```

Your docs should be live at <http://localhost:4567>. The docs will be rebuilt when you refresh the page.

# Deploying to Github Pages

```sh
make deploy
```

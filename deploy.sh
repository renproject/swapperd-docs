#!/usr/bin/env bash

cd slate
bundle exec middleman build --clean
git add build -f
git commit -m 'Deploying to gh-pages'
git push origin `git subtree split --prefix build master`:gh-pages --force


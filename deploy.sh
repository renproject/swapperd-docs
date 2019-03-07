#!/usr/bin/env bash

cd slate
bundle exec middleman build --clean
cd ..
git add slate/build -f
git commit -m 'Deploying to gh-pages'
git push origin `git subtree split -P slate/build -b gh-pages`:gh-pages --force
git reset HEAD~1


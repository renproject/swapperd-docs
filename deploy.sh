#!/usr/bin/env bash

cd slate
bundle exec middleman build --clean
cp -vr build ..
cd ..
git add ./build -f
git commit -m 'Deploying to gh-pages'
git push origin `git subtree split -P build -b gh-pages`:gh-pages --force


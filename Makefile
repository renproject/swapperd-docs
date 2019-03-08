# build should reference the command and not the ./build directory
.PHONY: build

all: build

build:
	cd slate; bundle exec middleman build --clean --verbose

deploy: build
	rm -rf ./build
	cp -vr slate/build .
	git add ./build -f
	git commit -m 'Deploying to gh-pages'
	git push origin `git subtree split -P build -b gh-pages`:gh-pages --force

serve:
	cd slate; bundle exec middleman server


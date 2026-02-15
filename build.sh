#!/usr/bin/env bash

HUGO_VERSION=0.155.3

echo "Configuring Git..."
git config core.quotepath false
if [ "$(git rev-parse --is-shallow-repository)" = "true" ]; then
  git fetch --unshallow
fi

echo "Initializing submodules..."
git submodule update --init --recursive

echo "Installing Hugo ${HUGO_VERSION}..."
curl -sLJO "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-amd64.tar.gz"
tar -xf "hugo_${HUGO_VERSION}_linux-amd64.tar.gz" hugo
rm "hugo_${HUGO_VERSION}_linux-amd64.tar.gz"

echo "Hugo version: $(./hugo version)"

echo "Building site..."
./hugo --gc --minify

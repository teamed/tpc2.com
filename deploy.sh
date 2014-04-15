#!/bin/bash -e

SRC=$(pwd)
rm -rf _site
jekyll build --trace

mkdir -p ~/.ssh
CLONE=$(mktemp -d -t blog-XXX)
git clone "https://yegor256:${PASSWORD}@github.com/tpc2/tpc2.com.git" "${CLONE}"
cd "${CLONE}"
git checkout gh-pages
rm -rf *
cp -R ${SRC}/_site/* .
rm README.md
rm deploy.sh

git add .
git config --global user.email "deploy@timed.io"
git config --global user.name "deploy.sh"
git commit -am "new site version deployed" --allow-empty
git push --quiet origin gh-pages

rm -rf "${CLONE}"

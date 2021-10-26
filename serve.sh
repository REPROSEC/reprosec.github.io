#!/bin/bash -e

echo "### Starting local web server (localhost:4000), this might take a moment..."

source env.sh

docker run --rm   -v "${PWD}:/srv/jekyll" -p 4000:4000 jekyll/jekyll:${JEKYLL_VERSION} jekyll serve

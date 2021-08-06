#!/bin/bash -e

source env.sh

docker run --rm   -v "${PWD}:/srv/jekyll" -p 4000:4000 jekyll/jekyll:${JEKYLL_VERSION} jekyll serve

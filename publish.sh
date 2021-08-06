#!/bin/bash -e

source env.sh

if [ -e _gh-pages ]
then
    echo "!!! there is a _gh-pages subdirectory"
    echo "### try to safely remove _gh-pages"
    echo "--- if this step fails, please check _gh-pages and remove it"
    git worktree remove _gh-pages
fi

echo "### checkout gh-pages branch"
git worktree add _gh-pages gh-pages; (cd _gh-pages; git pull)
echo "### build page"
docker run --rm   -v "${PWD}:/srv/jekyll" -v "${PWD}/_gh-pages:/srv/jekyll/_site" jekyll/jekyll:${JEKYLL_VERSION} jekyll build
echo "### commit and push"
(cd _gh-pages; git add .; git commit -m "page generated"; git push)
echo "### remove worktree"
git worktree remove _gh-pages

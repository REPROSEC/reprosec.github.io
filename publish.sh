#!/bin/bash -e

echo "### checkout gh-pages branch"
git worktree add _gh-pages gh-pages
echo "### build page"
docker run --rm   -v "${PWD}:/srv/jekyll" -v "${PWD}/_gh-pages:/srv/jekyll/_site" jekyll/jekyll jekyll build
echo "### commit and push"
(cd _gh-pages; git add .; git commit -m "page generated"; git push)
echo "### remove worktree"
git worktree remove _gh-pages

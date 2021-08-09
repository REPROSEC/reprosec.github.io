# REPROSEC - Rigorous/Reproducible Engineering for PROvable (protocol) SECurity

## Technical Information About This Website

This website is created using [Jekyll](https://jekyllrb.com), a static site generator.

All `*.md` files represent a page (see Jekyll documentation). Publications are managed using the [jekyll-scholar plugin](https://github.com/inukshuk/jekyll-scholar).

To add a new publication, add it to the BibTeX file `_bibliography/references.bib` and place the PDF file of the paper in the folder `publications`. Note that the PDF file must have the same filename as the BibTeX key. Further note that you need to set the (custom) `ourwork` attribute in BibTeX to `yes` for the publication to appear in the publication list. (We may want to add other publications in the future that we just want to reference - hence the publication list is filtered by this custom attribute.)

To locally test the website, please run `serve.sh`. You can then open http://localhost:4000 to view the current version of your local copy. Please note that you need a working Docker setup to run this command.

To publish a new version of the website, please run `publish.sh`. This script lets Jekyll compile a new version of the website and commits the result in the git branch `gh-pages` (this branch is temporarily checked out in the subdirectory `_gh-pages` while the `publish.sh` script is running).

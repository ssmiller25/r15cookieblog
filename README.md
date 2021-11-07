# Steve Miller's Personal Blog

[![Netlify Status](https://api.netlify.com/api/v1/badges/4dee8665-200d-43f2-8d9e-c1749b1e82ad/deploy-status)](https://app.netlify.com/sites/r15cookieblog/deploys)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://gitlab.com/ssmiller25/r15cookieblog/-/tree/main)

Using Hugo, and currently set to use the hugo-kiera theme at https://github.com/ssmiller25/hugo-kiera.git (fork of https://github.com/avianto/hugo-kiera)
 

Make sure to run
```sh
git submodule update --init --recursive
```
on the first pull of the repo to pull the submodule

To update submodules

```sh
git submodule update --remote --merge
```

## Local Build

To test and run locally:

```sh
make build   # Build latest docker container
make run     # Run that container locally
make push    # Push the container up (mostly for me...)
```
# Purpose

The purpose of this repo is to provide a brief demo of one way of implementing containerized local development in the Go language.

# How it works

There are two dockerfiles in the repo.

`dockerfile.debug` implements a more memory intensive application that hot-reloads changes as they are saved and should be run while working on the application.

`dockerfile.prod` implements a light weight, non memory-intensive dockerfile that would be used when deploying the application on remote servers.

# Usage

`make dev-server` will start the development server. Once started, it can be accessed at `localhost:8080`.

`make prod-server` will start the production server, which can also be accessed at `localhost:8080`

Because the two servers use the same port, be sure to use `stop-prod-server` and `stop-dev-server` so they don't step on each others toes.

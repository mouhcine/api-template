# Vapor Template with Docker

A basic vapor template for starting a new Vapor web application with easy Docker setup. If you're using vapor toolbox, you can use: `vapor new MYAPPNAME --template=mouhcine/vapor-docker-template`

# Requirements
[docker](https://www.docker.com/) needs to be installed on your machine.

# Make targets
## docker-image
`make docker-image` builds the docker image on which you will build and run your Vapor web application. You can extend the built image with MySQL, PGSQL or SQLite support by using the following variables set to `true`: `MYSQL`, `PGSQL` and `SQLITE`.
For instance: `make docker-image MYSQL=true`

## build
`make build` builds your Vapor web application. You need to call `make docker-image` at least once before.

## run
`make run` runs your Vapor web application.

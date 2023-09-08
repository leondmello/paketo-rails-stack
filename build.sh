#!/bin/bash

docker build . -t cnbs/rails-stack-base:jammy --target base   
docker build . -t cnbs/rails-stack-build:jammy --target build -f build.Dockerfile
docker build . -t cnbs/rails-stack-run:jammy --target run -f run.Dockerfile  
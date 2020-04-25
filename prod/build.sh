#!/bin/bash

if [ "$(basename "$(pwd)")" == "prod" ]; then echo "Run me from project root as ./prod/$(basename "$0")" && exit 1; fi

make build
docker build -t asherda/lightwalletd:latest -f ./prod/Dockerfile .

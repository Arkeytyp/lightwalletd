#!/bin/bash

docker run -it --name lightwalletd --rm --env-file ./prod/.env -p 9067:9067 asherda/lightwalletd:latest

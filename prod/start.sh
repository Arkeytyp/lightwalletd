#!/bin/bash

docker run -it --name lightwalletd --rm --env-file ./prod/.env -p 9067:9067 infra.valu.idevcorp.net:5000/idevcorp/lightwalletd:latest

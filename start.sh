#!/bin/bash

docker pull ghcr.io/jtihlarik/dockernginxexample:latest
docker run -d -p 80:80 -p 22:22 --name dockernginxexample ghcr.io/jtihlarik/dockernginxexample
docker container inspect dockernginxexample | grep -i IPAddress | tail -n 1 | tr -d ' "'

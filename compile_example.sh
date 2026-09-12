#!/bin/sh
ln -s examples data
docker compose run --user $(id -u):$(id -g) --rm app -o sample.pdf sample.md
rm data

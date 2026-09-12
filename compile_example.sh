#!/bin/sh
if [ -e data ]; then
    echo "rm ./data before run this script"
    exit 1
fi

ln -s examples data
docker compose run --user $(id -u):$(id -g) --rm app -o sample.pdf sample.md
rm data

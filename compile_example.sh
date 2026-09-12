#!/bin/sh
if [ -e data ]; then
    echo "rm ./data before run this script"
    exit 1
fi

ln -s examples data
docker compose run --user $(id -u):$(id -g) --rm app -o sample.pdf sample.md
docker compose run --rm app --template touying-slide.typ -o sample-slide.pdf sample.md
docker compose run --rm app -o slide.pdf slide.md
rm data

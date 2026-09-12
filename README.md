# docker-pandoc-typst-jp
Pandoc docker image with typst for Japanese.

## Usage

### Basic Usage
```sh
$ docker compose run --rm app -o doc.pdf doc.md

# run "make" in data dir
$ docker compose run --rm make

# run "watchfiles make *.md" in data dir
$ docker compose up -d watchfiles
```

### Fonts
The following Japanese fonts are supported.

- NotoSansCJK
- BizinGothicNF

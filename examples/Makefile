SRCS := $(wildcard *.md)
TGTS := $(SRCS:.md=.pdf)

all: $(TGTS)

%.pdf: %.md
	pandoc -t typst -o $@ $<

.PHONY: clean
clean:
	rm -f *.pdf

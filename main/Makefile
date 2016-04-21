SRC_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

include Makefile.sub

all: $(A)main

$(A)main: $(O)main.o $(O)file11.o $(O)file12.o
	$(LINK)


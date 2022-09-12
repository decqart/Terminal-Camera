CC=gcc

CFLAGS=-g -Wall
LDFLAGS= -lm

O=bin

all: $(O)/camtui

clean:
	rm -rf *.o *~ *.flc
	rm -rf $(O)/*

$(O)/camtui:	main.c
	$(CC) $(CFLAGS) main.c \
	-o $(O)/camtui $(LDFLAGS)


CC=gcc

CFLAGS=-Wall -g3

all: clean lookup

lookup: lookup.c 
	$(CC) $(CFLAGS) $< -o $@

debug: lookup
	valgrind --xtree-memory=full ./$< Holmes big.txt

clean:
	rm -Rf *~ xtmemory* lookup

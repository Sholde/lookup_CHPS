CC=gcc

CFLAGS=-Wall -g3

all: clean lookup

lookup: lookup.c 
	$(CC) $(CFLAGS) $< -o $@

debug:
	valgrind --xtree-memory=full ./lookup Holmes big.txt

clean:
	rm -Rf *~ lookup

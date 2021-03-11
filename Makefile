.POSIX:
.PHONY: clean test
OBJECTS=util.o prim.o vec.o main.o
CFLAGS=-Ofast -pipe -march=native
rsa: $(OBJECTS)
	$(CC) $(EXTRA) $(CFLAGS) -o $@ $(OBJECTS)
test: rsa
	./rsa
clean:
	rm -f $(OBJECTS)
.SUFFIXES: .o .c
.c.o:
	$(CC) -c $(EXTRA) $(CFLAGS) -o $@ $<

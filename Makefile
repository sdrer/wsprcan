CC=clang
CFLAGS= -I/opt/local/include -Wall 
LDFLAGS = -L/opt/local/lib 
LIBS = -lsndfile -lfftw3

DEPS = fano.h
OBJ = wspr.o fano.o tab.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

wsprcan: $(OBJ) 
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS) $(LIBS)
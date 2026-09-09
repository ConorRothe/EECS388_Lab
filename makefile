CC = gcc
CFLAGS = -Wall

main: main.o isEven.o isOdd.o
	$(CC) $(CFLAGS) -o main main.o isEven.o isOdd.o

main.o: main.c isEven.h isOdd.h
	$(CC) $(CFLAGS) -c main.c

isEven.o: isEven.c isEven.h
	$(CC) $(CFLAGS) -c isEven.c

isOdd.o: isOdd.c isOdd.h
	$(CC) $(CFLAGS) -c isOdd.c

clean:
	rm -f *.o main
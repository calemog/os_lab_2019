.PHONY : all clean


CC = gcc
CFLAGS=-I.

all : parallel_sum zombie parallel_min_max process_memory


parallel_sum : parallel_sum.o utils.o utils.h sum.h libsum.a
	$(CC) -pthread -o parallel_sum parallel_sum.o utils.o -I. -L. -lsum

parallel_sum.o : parallel_sum.c
	$(CC) -o parallel_sum.o -c parallel_sum.c $(CFLAGS)

libsum.a : sum.o
	ar cr libsum sum.o

sum.o : sum.c
	$(CC) -o sum.o -c sum.c $(CFLAGS)

zombie : zombie.c
	$(CC) -o zombie zombie.c $(CFLAGS)

process_memory : process_memory.c
	$(CC) -o process_memory process_memory.c $(CFLAGS)

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o parallel_min_max utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

utils.o : utils.h
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

clean :
	rm utils.o find_min_max.o sequential_min_max parallel_min_max process_memory zombie sum.o libsum.a parallel_sum.o parallel_sum

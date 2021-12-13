all: msim.c
	gcc -std=c99 -Wall -o msim msim.c
	
clean:
	rm -rf *.o msim

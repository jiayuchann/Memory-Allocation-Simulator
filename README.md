# Memory-Allocation-Simulator

I wrote this program in C.
IDE: Visual Studio Code

Compile it in the Linux terminal:
gcc -std=c99 -Wall -o msim msim.c

Usage: ./msim <inputfile>

Format of the inputfile:<br />
  a: simulates the malloc() function. First parameter is the number of bytes to allocate. second parameter is the reference to the block<br />
  f: simulates the free() function. First parameter is the reference to the block in which we are freeing<br />
  r: simulates the realloc() function. First parameter is the number of bytes to allocate. Second parameter is the reference to the block in which we are reallocating. Third parameter is the reference to the block after the realloction. <br />
  
Use capital letters for the input while running the program.
The results will output to output.txt

I started out by implementing an implicit free list allocator, then extended it to support explicit free lists.
Block struct stores the data of individual blocks, keeping track of previous and next blocks adjacent in memory.
ExpList struct only keeps track of the freed blocks.
heapArray is used to store the pointers (the reference numbers). 

I started by initializing the heap by 
making it as one huge free block, so every time an allocation occurs it will try to split the block, or find other appropriate
previously freed blocks. I also made sure every block has double word alignment.

  

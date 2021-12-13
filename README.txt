Date: 04/10/2021
Class: CS4541
Assignment: Memory_Allocation_Lab
Author(s): Jia Yu Chan
Email: jiayu.chan@wmich.edu

I wrote this program in C.
IDE: Visual Studio Code

Compile it in the Linux terminal:
gcc -std=c99 -Wall -o msim msim.c

Usage: ./msim <inputfile>

Use capital letters for the input while running the program.
The results will output to output.txt
The results were very similar to the examples provided.

I started out by implementing an implicit free list allocator, then extended it to support explicit free lists.
Block struct stores the data of individual blocks, keeping track of previous and next blocks adjacent in memory.
ExpList struct only keeps track of the freed blocks.
heapArray is used to store the pointers (the reference numbers). 


References:
https://github.com/17king/heap/blob/master/HeapAllocationSimulator/Heap.c
It gave me alot of ideas on how to implement the implicit allocator, but some parts were wrong. I started by initializing the heap by 
making it as one huge free block, so every time an allocation occurs it will try to split the block, or find other appropriate
previously freed blocks. I also made sure every block has double word alignment.

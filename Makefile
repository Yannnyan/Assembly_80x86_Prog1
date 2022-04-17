

firstProg: firstProg.o
	ld -m elf_i386 -o firstProg firstProg.o
	

firstProg.o: firstProg.S
	nasm -f elf32 -o firstProg.o firstProg.S

.PHONY: clean

clean:
	rm -f firstProg *.o





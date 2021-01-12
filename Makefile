rng: rngc.o rngasm.o
	$(CC) $^ -no-pie -o $@

rngc.o: rng.c
	$(CC) -c $^ -o $@

rngasm.o: rng.asm
	nasm -felf64 $^ -o $@
	

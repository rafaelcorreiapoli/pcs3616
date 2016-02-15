fatorial: fatorial.c
	gcc -o fatorial fatorial.c

run: fatorial
	./fatorial

run_gdb:
	gcc -g -o fatorial_debug fatorial.c
	gdb fatorial_debug

clean:
	rm -f fatorial
.PHONY: hello all clean

CC=gcc
CFLAGS=-Wall -O3

all: app

calculator/calc.o: calculator/calc.c calculator/calc.h
	make -C calculator calc.o

utils/utils.o: utils/utils.c utils/utils.h
	cd utils && gcc -c utils.c

app.o: app.c
	$(CC) $(CFLAGS) -c app.c

app: calculator/calc.o utils/utils.o app.o
	$(CC) $(CFLAGS) -o app $^

hello:
	@echo "Hello"

clean:
	rm calculator/calc.o utils/utils.o app.o app

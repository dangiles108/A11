CFLAGS = -Wall -Werror -Wpedantic -std=c++20 -O0 -g
CC = g++

OBJECTS = testProgLinkedList.o

run-tests: $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

testProgLinkedList.o: testProgLinkedList.cpp linkedList.h unorderedLinkedList.h

clean:
	rm -f run-tests *.o *~

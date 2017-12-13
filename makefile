SOURCES = test/mathTest.c\
					test/testRunner.c\
					test/testMain.c\
					unity/extras/fixture/src/unity_fixture.c\
					unity/src/unity.c\
					mathLib/mathFunc.c

FILES= $(SOURCES)
OBJECTS=$(FILES:.c=.o)
HEADERS=$(FILES:.c=.h)


CC=gcc
DEBUG=-g
LFLAGS=-Wall
CFLAGS=-c -Wall


test: $(OBJECTS)
	$(CC) $(LFLAGS) $^ -o $@

%.o:%.c $(HEADERS)
	$(CC)	$(CFLAGS) $(DEBUG) $(FILES)

all: test run

run:
	./test.exe

clean:
	rm $(OBJECTS)
	rm test.exe

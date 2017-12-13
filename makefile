TEST_SOURCES = test/mathTest.c\
					test/testRunner.c\
					test/testMain.c\
					unity/extras/fixture/src/unity_fixture.c\
					unity/src/unity.c\

UTIL_SOURCES = mathLib/mathFunc.c


OBJECTS=$(TEST_SOURCES:.c=.o)
HEADERS=$(TEST_SOURCES:.c=.h)

UTIL_OBJECTS=$(UTIL_SOURCES:.c=.o)
UTIL_HEADERS=$(UTIL_SOURCES:.c=.h)


CC=gcc
DEBUG=-g
LFLAGS=-Wall
CFLAGS=-c -Wall

all: test main run_test

main: main.o $(UTIL_OBJECTS)
	$(CC) $(LFLAGS) $^ -o $@

test: $(OBJECTS) $(UTIL_OBJECTS)
	$(CC) $(LFLAGS) $^ -o $@

%.o:%.c $(HEADERS)
	$(CC)	$(CFLAGS) $(DEBUG) $(TEST_SOURCES))

run_test:
	./test.exe

clean:
	rm $(OBJECTS) $(UTIL_OBJECTS) main.o
	rm *.exe

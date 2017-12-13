SOURCES = test/mathTest.c\
					test/testRunner.c\
					test/testMain.c\
					unity/extras/fixture/src/unity_fixture.c\
					unity/src/unity.c\

UTIL_SCR = mathLib/mathFunc.c


FILES= $(SOURCES)
OBJECTS=$(FILES:.c=.o)
HEADERS=$(FILES:.c=.h)

UTIL_OBJECTS=$(UTIL_SCR:.c=.o)
UTIL_HEADERS=$(UTIL_SCR:.c=.h)

CC=gcc
DEBUG=-g
LFLAGS=-Wall
CFLAGS=-c -Wall

all: test main run


main: main.o $(UTIL_OBJECTS)
	$(CC) $(LFLAGS) $^ -o $@

test: $(OBJECTS) $(UTIL_OBJECTS)
	$(CC) $(LFLAGS) $^ -o $@

%.o:%.c $(HEADERS)
	$(CC)	$(CFLAGS) $(DEBUG) $(FILES)

all: test run

run:
	./test.exe

clean:
	rm $(OBJECTS) $(UTIL_OBJECTS) main.o
	rm *.exe

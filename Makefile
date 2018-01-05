CC=g++
CFLAGS=-c -Wall -std=c++0x
LDFLAGS=
SOURCES=$(wildcard *.c *.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=Hello

all: $(SOURCES) $(EXECUTABLE)
		
$(EXECUTABLE): $(OBJECTS) 
		$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o:
		$(CC) $(CFLAGS) $< -o $@

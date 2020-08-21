CXX = g++
CXXFLAGS = -std=c++11 -I.
LDLIBS = -lwiringPi

HEADERS = dac60508.h
OBJECTS = main.o dac60508.o

default: main

main: $(OBJECTS)
	$(CXX) -o $@ $(LDLIBS) $^

%.o: ./%.cpp
	$(CXX) -c $< $(CXXFLAGS)

clean:
	-rm -f $(OBJECTS)
	-rm -f main
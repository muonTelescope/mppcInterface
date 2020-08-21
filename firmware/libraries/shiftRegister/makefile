CXX = g++
CXXFLAGS = -std=c++11 -I.
LDLIBS = -lwiringPi

HEADERS = shiftRegister.h
OBJECTS = main.o shiftRegister.o

default: main

main: $(OBJECTS)
		$(CXX) -o $@ $(LDLIBS) $^

%.o: ./%.cpp
		$(CXX) -c $< $(CXXFLAGS)

clean:
		-rm -f $(OBJECTS)
		-rm -f main
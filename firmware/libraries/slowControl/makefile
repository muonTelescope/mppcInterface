CXX = g++
CXXFLAGS = -std=c++11 -I.
LDLIBS = -lwiringPi

HEADERS = shiftRegister.h dac60508.h ice40.h
OBJECTS = main.o shiftRegister/shiftRegister.o dac60508/dac60508.o max1932/max1932.o ice40/ice40.o

default: main

main: $(OBJECTS)
		$(CXX) -o $@ $(LDLIBS) $^

%.o: ./%.cpp
		$(CXX) -c $< $(CXXFLAGS)

clean:
		-rm -f $(OBJECTS)
		-rm -f main

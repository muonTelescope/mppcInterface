CXX = g++
CXXFLAGS = -std=c++11 -I.
LDLIBS = -lwiringPi

HEADERS = ice40.h
OBJECTS = main.o ice40.o 

default: main

main: $(OBJECTS)
	$(CXX) $(CXXFLAGS) $^ $(LDLIBS) -o $@

%.o: ./%.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(OBJECTS): $(HEADERS)

clean:
	-rm -f $(OBJECTS)
	-rm -f main
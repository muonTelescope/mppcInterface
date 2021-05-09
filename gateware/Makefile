# Project setup
PROJ      = coincidence
BUILD     = ./build
DEVICE    = 384
FOOTPRINT = qn32

# Files
FILES = top.v mppcInput.v uart.v realClock.v

.PHONY: all clean burn

all:
	# if build folder doesn't exist, create it
	mkdir -p $(BUILD)
	# synthesize using Yosys
	yosys -p "synth_ice40 -top top -blif $(BUILD)/$(PROJ).blif" $(FILES)
	# Place and route using arachne
	arachne-pnr -d $(DEVICE) -P $(FOOTPRINT) -o $(BUILD)/$(PROJ).asc -p pinmap.pcf $(BUILD)/$(PROJ).blif
	# Convert to bitstream using IcePack
	icepack $(BUILD)/$(PROJ).asc $(BUILD)/$(PROJ).bin

burn:
	# iceprog $(BUILD)/$(PROJ).bin
	../firmware/libraries/ice40/main $(BUILD)/$(PROJ).bin

clean:
	rm build/*

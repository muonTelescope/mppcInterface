# Project setup
PROJ      = coincidence
BUILD     = ./build
DEVICE    = lp384
FOOTPRINT = qn32


# Files
FILES = top.v
# FILES += mppcInput.v

.PHONY: all clean burn

all $(BUILD)/$(PROJ).asc $(BUILD)/$(PROJ).bin:
	# if build folder doesn't exist, create it
	mkdir -p $(BUILD)
	# synthesize using Yosys
	yosys -p "synth_ice40 -top top -blif $(BUILD)/$(PROJ).blif -json $(BUILD)/$(PROJ).json" $(FILES)
	# Place and route using nextpnr
	nextpnr-ice40 --$(DEVICE) --json $(BUILD)/$(PROJ).json --pcf pinmap.pcf --asc $(BUILD)/$(PROJ).asc
	# Convert to bitstream using IcePack
	icepack $(BUILD)/$(PROJ).asc $(BUILD)/$(PROJ).bin
	
burn: $(BUILD)/$(PROJ).bin
	iceprog $(BUILD)/$(PROJ).bin

clean:
	rm build/*
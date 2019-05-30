all: test export

testbench: decoder_1_bit_tb
export: Decoder_1_Bit_export
build: export testbench

# Use a temporary folder for compiled stuff
WORKDIR=work

# All code should be VHDL93 compliant, 
# but 93c is a bit easier to work with
STD=93c

# Eveything should compile with clean IEEE,
# but the test-bench and CSV util's require
# std_logic_textio from Synopsys
IEEE=synopsys

# VCD trace file for GTKWave
VCDFILE=trace.vcd



$(WORKDIR):
	mkdir $(WORKDIR)

$(WORKDIR)/system_types.o: system_types.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) system_types.vhdl

$(WORKDIR)/Types_Decoder_1_Bit.o: Types_Decoder_1_Bit.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_Decoder_1_Bit.vhdl

$(WORKDIR)/Decoder.o: Decoder.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_1_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_1_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/Decoder_1_Bit.o: Decoder_1_Bit.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_1_Bit.o $(WORKDIR)/Decoder.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder_1_Bit.vhdl

$(WORKDIR)/TestBench_Decoder_1_Bit.o: TestBench_Decoder_1_Bit.vhdl $(WORKDIR)/Decoder_1_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_Decoder_1_Bit.vhdl

decoder_1_bit_tb: $(WORKDIR)/TestBench_Decoder_1_Bit.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder_1_Bit_tb

Decoder_1_Bit_export: $(WORKDIR)/Decoder_1_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_Decoder_1_Bit.vhdl

test: decoder_1_bit_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder_1_Bit_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o decoder_1_bit_tb


.PHONY: all clean test export build

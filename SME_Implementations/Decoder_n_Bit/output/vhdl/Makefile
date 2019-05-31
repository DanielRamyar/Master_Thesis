all: test export

testbench: decoder_n_bit_tb
export: Decoder_n_Bit_export
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

$(WORKDIR)/Types_Decoder_n_Bit.o: Types_Decoder_n_Bit.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_Decoder_n_Bit.vhdl

$(WORKDIR)/NOTGate_0.o: NOTGate_0.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_0.vhdl
$(WORKDIR)/NOTGate_1.o: NOTGate_1.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_1.vhdl
$(WORKDIR)/ANDGate_0.o: ANDGate_0.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_0.vhdl
$(WORKDIR)/ANDGate_1.o: ANDGate_1.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_1.vhdl
$(WORKDIR)/ANDGate_2.o: ANDGate_2.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_2.vhdl
$(WORKDIR)/ANDGate_3.o: ANDGate_3.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_3.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/Decoder_n_Bit.o: Decoder_n_Bit.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)/NOTGate_0.o $(WORKDIR)/NOTGate_1.o $(WORKDIR)/ANDGate_0.o $(WORKDIR)/ANDGate_1.o $(WORKDIR)/ANDGate_2.o $(WORKDIR)/ANDGate_3.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder_n_Bit.vhdl

$(WORKDIR)/TestBench_Decoder_n_Bit.o: TestBench_Decoder_n_Bit.vhdl $(WORKDIR)/Decoder_n_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_Decoder_n_Bit.vhdl

decoder_n_bit_tb: $(WORKDIR)/TestBench_Decoder_n_Bit.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder_n_Bit_tb

Decoder_n_Bit_export: $(WORKDIR)/Decoder_n_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_Decoder_n_Bit.vhdl

test: decoder_n_bit_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder_n_Bit_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o decoder_n_bit_tb


.PHONY: all clean test export build

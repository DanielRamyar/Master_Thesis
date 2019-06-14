all: test export

testbench: alu_1_bit_tb
export: ALU_1_Bit_export
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

$(WORKDIR)/Types_ALU_1_Bit.o: Types_ALU_1_Bit.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_ALU_1_Bit.vhdl

$(WORKDIR)/ALU.o: ALU.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ALU_1_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ALU.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ALU_1_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/ALU_1_Bit.o: ALU_1_Bit.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ALU_1_Bit.o $(WORKDIR)/ALU.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ALU_1_Bit.vhdl

$(WORKDIR)/TestBench_ALU_1_Bit.o: TestBench_ALU_1_Bit.vhdl $(WORKDIR)/ALU_1_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_ALU_1_Bit.vhdl

alu_1_bit_tb: $(WORKDIR)/TestBench_ALU_1_Bit.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ALU_1_Bit_tb

ALU_1_Bit_export: $(WORKDIR)/ALU_1_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_ALU_1_Bit.vhdl

test: alu_1_bit_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ALU_1_Bit_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o alu_1_bit_tb


.PHONY: all clean test export build

all: test export

testbench: instruction_memory_tb
export: Instruction_Memory_export
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

$(WORKDIR)/Types_Instruction_Memory.o: Types_Instruction_Memory.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_Instruction_Memory.vhdl

$(WORKDIR)/IM.o: IM.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Instruction_Memory.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) IM.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Instruction_Memory.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/Instruction_Memory.o: Instruction_Memory.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Instruction_Memory.o $(WORKDIR)/IM.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Instruction_Memory.vhdl

$(WORKDIR)/TestBench_Instruction_Memory.o: TestBench_Instruction_Memory.vhdl $(WORKDIR)/Instruction_Memory.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_Instruction_Memory.vhdl

instruction_memory_tb: $(WORKDIR)/TestBench_Instruction_Memory.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Instruction_Memory_tb

Instruction_Memory_export: $(WORKDIR)/Instruction_Memory.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_Instruction_Memory.vhdl

test: instruction_memory_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Instruction_Memory_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o instruction_memory_tb


.PHONY: all clean test export build

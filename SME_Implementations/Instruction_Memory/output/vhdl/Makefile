all: test export

testbench: program_counter_tb
export: Program_Counter_export
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

$(WORKDIR)/Types_Program_Counter.o: Types_Program_Counter.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_Program_Counter.vhdl

$(WORKDIR)/Instruction_Memory_IM.o: Instruction_Memory_IM.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Program_Counter.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Instruction_Memory_IM.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Program_Counter.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/Program_Counter.o: Program_Counter.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Program_Counter.o $(WORKDIR)/Instruction_Memory_IM.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Program_Counter.vhdl

$(WORKDIR)/TestBench_Program_Counter.o: TestBench_Program_Counter.vhdl $(WORKDIR)/Program_Counter.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_Program_Counter.vhdl

program_counter_tb: $(WORKDIR)/TestBench_Program_Counter.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Program_Counter_tb

Program_Counter_export: $(WORKDIR)/Program_Counter.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_Program_Counter.vhdl

test: program_counter_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Program_Counter_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o program_counter_tb


.PHONY: all clean test export build

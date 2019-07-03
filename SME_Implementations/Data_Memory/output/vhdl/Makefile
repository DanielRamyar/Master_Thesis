all: test export

testbench: data_memory_tb
export: Data_Memory_export
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

$(WORKDIR)/Types_Data_Memory.o: Types_Data_Memory.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_Data_Memory.vhdl

$(WORKDIR)/DM.o: DM.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Data_Memory.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) DM.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Data_Memory.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/Data_Memory.o: Data_Memory.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Data_Memory.o $(WORKDIR)/DM.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Data_Memory.vhdl

$(WORKDIR)/TestBench_Data_Memory.o: TestBench_Data_Memory.vhdl $(WORKDIR)/Data_Memory.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_Data_Memory.vhdl

data_memory_tb: $(WORKDIR)/TestBench_Data_Memory.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Data_Memory_tb

Data_Memory_export: $(WORKDIR)/Data_Memory.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_Data_Memory.vhdl

test: data_memory_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Data_Memory_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o data_memory_tb


.PHONY: all clean test export build

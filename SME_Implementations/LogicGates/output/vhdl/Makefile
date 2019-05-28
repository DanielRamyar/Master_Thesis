all: test export

testbench: test_tb
export: test_export
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

$(WORKDIR)/Types_test.o: Types_test.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_test.vhdl

$(WORKDIR)/LogicGates_ANDGate.o: LogicGates_ANDGate.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_test.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) LogicGates_ANDGate.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_test.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/test.o: test.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_test.o $(WORKDIR)/LogicGates_ANDGate.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) test.vhdl

$(WORKDIR)/TestBench_test.o: TestBench_test.vhdl $(WORKDIR)/test.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_test.vhdl

test_tb: $(WORKDIR)/TestBench_test.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) test_tb

test_export: $(WORKDIR)/test.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_test.vhdl

test: test_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) test_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o test_tb


.PHONY: all clean test export build

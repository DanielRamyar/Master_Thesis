all: test export

testbench: andgate_tb
export: ANDGate_export
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

$(WORKDIR)/Types_ANDGate.o: Types_ANDGate.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_ANDGate.vhdl

$(WORKDIR)/cls_ANDGate.o: cls_ANDGate.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ANDGate.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) cls_ANDGate.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ANDGate.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/ANDGate.o: ANDGate.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ANDGate.o $(WORKDIR)/cls_ANDGate.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate.vhdl

$(WORKDIR)/TestBench_ANDGate.o: TestBench_ANDGate.vhdl $(WORKDIR)/ANDGate.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_ANDGate.vhdl

andgate_tb: $(WORKDIR)/TestBench_ANDGate.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_tb

ANDGate_export: $(WORKDIR)/ANDGate.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_ANDGate.vhdl

test: andgate_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o andgate_tb


.PHONY: all clean test export build

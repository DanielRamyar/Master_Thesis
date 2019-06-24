all: test export

testbench: vhdl_register_tb
export: vhdl_Register_export
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

$(WORKDIR)/Types_vhdl_Register.o: Types_vhdl_Register.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_vhdl_Register.vhdl

$(WORKDIR)/RegisterNS_Register.o: RegisterNS_Register.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_vhdl_Register.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) RegisterNS_Register.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_vhdl_Register.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/vhdl_Register.o: vhdl_Register.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_vhdl_Register.o $(WORKDIR)/RegisterNS_Register.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) vhdl_Register.vhdl

$(WORKDIR)/TestBench_vhdl_Register.o: TestBench_vhdl_Register.vhdl $(WORKDIR)/vhdl_Register.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_vhdl_Register.vhdl

vhdl_register_tb: $(WORKDIR)/TestBench_vhdl_Register.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) vhdl_Register_tb

vhdl_Register_export: $(WORKDIR)/vhdl_Register.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_vhdl_Register.vhdl

test: vhdl_register_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) vhdl_Register_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o vhdl_register_tb


.PHONY: all clean test export build

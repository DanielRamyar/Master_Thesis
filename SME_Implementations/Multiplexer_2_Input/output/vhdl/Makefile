all: test export

testbench: multiplexer_2_input_tb
export: Multiplexer_2_input_export
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

$(WORKDIR)/Types_Multiplexer_2_input.o: Types_Multiplexer_2_input.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_Multiplexer_2_input.vhdl

$(WORKDIR)/Multiplexer_2_Input_NOTGate_0.o: Multiplexer_2_Input_NOTGate_0.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Multiplexer_2_input.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Multiplexer_2_Input_NOTGate_0.vhdl
$(WORKDIR)/Multiplexer_2_Input_ANDGate_0.o: Multiplexer_2_Input_ANDGate_0.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Multiplexer_2_input.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Multiplexer_2_Input_ANDGate_0.vhdl
$(WORKDIR)/Multiplexer_2_Input_ANDGate_1.o: Multiplexer_2_Input_ANDGate_1.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Multiplexer_2_input.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Multiplexer_2_Input_ANDGate_1.vhdl
$(WORKDIR)/Multiplexer_2_Input_ORGate_0.o: Multiplexer_2_Input_ORGate_0.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Multiplexer_2_input.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Multiplexer_2_Input_ORGate_0.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Multiplexer_2_input.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/Multiplexer_2_input.o: Multiplexer_2_input.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Multiplexer_2_input.o $(WORKDIR)/Multiplexer_2_Input_NOTGate_0.o $(WORKDIR)/Multiplexer_2_Input_ANDGate_0.o $(WORKDIR)/Multiplexer_2_Input_ANDGate_1.o $(WORKDIR)/Multiplexer_2_Input_ORGate_0.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Multiplexer_2_input.vhdl

$(WORKDIR)/TestBench_Multiplexer_2_input.o: TestBench_Multiplexer_2_input.vhdl $(WORKDIR)/Multiplexer_2_input.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_Multiplexer_2_input.vhdl

multiplexer_2_input_tb: $(WORKDIR)/TestBench_Multiplexer_2_input.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Multiplexer_2_input_tb

Multiplexer_2_input_export: $(WORKDIR)/Multiplexer_2_input.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_Multiplexer_2_input.vhdl

test: multiplexer_2_input_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Multiplexer_2_input_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o multiplexer_2_input_tb


.PHONY: all clean test export build

all: test export

testbench: fulladder_2_bit_tb
export: FullAdder_2_Bit_export
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

$(WORKDIR)/Types_FullAdder_2_Bit.o: Types_FullAdder_2_Bit.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_FullAdder_2_Bit.vhdl

$(WORKDIR)/Invert_A.o: Invert_A.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Invert_A.vhdl
$(WORKDIR)/Invert_B.o: Invert_B.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Invert_B.vhdl
$(WORKDIR)/Invert_CarryIn.o: Invert_CarryIn.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Invert_CarryIn.vhdl
$(WORKDIR)/ANDGate_0.o: ANDGate_0.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_0.vhdl
$(WORKDIR)/ANDGate_1.o: ANDGate_1.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_1.vhdl
$(WORKDIR)/ANDGate_2.o: ANDGate_2.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_2.vhdl
$(WORKDIR)/ANDGate_3.o: ANDGate_3.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_3.vhdl
$(WORKDIR)/ANDGate_4.o: ANDGate_4.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_4.vhdl
$(WORKDIR)/ANDGate_5.o: ANDGate_5.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_5.vhdl
$(WORKDIR)/ANDGate_6.o: ANDGate_6.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_6.vhdl
$(WORKDIR)/ORGate_0.o: ORGate_0.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ORGate_0.vhdl
$(WORKDIR)/ORGate_1.o: ORGate_1.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ORGate_1.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/FullAdder_2_Bit.o: FullAdder_2_Bit.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_FullAdder_2_Bit.o $(WORKDIR)/Invert_A.o $(WORKDIR)/Invert_B.o $(WORKDIR)/Invert_CarryIn.o $(WORKDIR)/ANDGate_0.o $(WORKDIR)/ANDGate_1.o $(WORKDIR)/ANDGate_2.o $(WORKDIR)/ANDGate_3.o $(WORKDIR)/ANDGate_4.o $(WORKDIR)/ANDGate_5.o $(WORKDIR)/ANDGate_6.o $(WORKDIR)/ORGate_0.o $(WORKDIR)/ORGate_1.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) FullAdder_2_Bit.vhdl

$(WORKDIR)/TestBench_FullAdder_2_Bit.o: TestBench_FullAdder_2_Bit.vhdl $(WORKDIR)/FullAdder_2_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_FullAdder_2_Bit.vhdl

fulladder_2_bit_tb: $(WORKDIR)/TestBench_FullAdder_2_Bit.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) FullAdder_2_Bit_tb

FullAdder_2_Bit_export: $(WORKDIR)/FullAdder_2_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_FullAdder_2_Bit.vhdl

test: fulladder_2_bit_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) FullAdder_2_Bit_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o fulladder_2_bit_tb


.PHONY: all clean test export build

all: test export

testbench: singlecycleriscv_tb
export: SingleCycleRISCV_export
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

$(WORKDIR)/Types_SingleCycleRISCV.o: Types_SingleCycleRISCV.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_SingleCycleRISCV.vhdl

$(WORKDIR)/PC.o: PC.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) PC.vhdl
$(WORKDIR)/Incrementer.o: Incrementer.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Incrementer.vhdl
$(WORKDIR)/Inc_mux.o: Inc_mux.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Inc_mux.vhdl
$(WORKDIR)/IM.o: IM.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) IM.vhdl
$(WORKDIR)/Control.o: Control.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Control.vhdl
$(WORKDIR)/ALU_Control.o: ALU_Control.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ALU_Control.vhdl
$(WORKDIR)/vhdl_Register.o: vhdl_Register.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) vhdl_Register.vhdl
$(WORKDIR)/ALU.o: ALU.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ALU.vhdl
$(WORKDIR)/Reg_mux.o: Reg_mux.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Reg_mux.vhdl
$(WORKDIR)/Mem_mux.o: Mem_mux.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Mem_mux.vhdl
$(WORKDIR)/WriteBuffer.o: WriteBuffer.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) WriteBuffer.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/SingleCycleRISCV.o: SingleCycleRISCV.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SingleCycleRISCV.o $(WORKDIR)/PC.o $(WORKDIR)/Incrementer.o $(WORKDIR)/Inc_mux.o $(WORKDIR)/IM.o $(WORKDIR)/Control.o $(WORKDIR)/ALU_Control.o $(WORKDIR)/vhdl_Register.o $(WORKDIR)/ALU.o $(WORKDIR)/Reg_mux.o $(WORKDIR)/Mem_mux.o $(WORKDIR)/WriteBuffer.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) SingleCycleRISCV.vhdl

$(WORKDIR)/TestBench_SingleCycleRISCV.o: TestBench_SingleCycleRISCV.vhdl $(WORKDIR)/SingleCycleRISCV.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_SingleCycleRISCV.vhdl

singlecycleriscv_tb: $(WORKDIR)/TestBench_SingleCycleRISCV.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) SingleCycleRISCV_tb

SingleCycleRISCV_export: $(WORKDIR)/SingleCycleRISCV.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_SingleCycleRISCV.vhdl

test: singlecycleriscv_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) SingleCycleRISCV_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o singlecycleriscv_tb


.PHONY: all clean test export build

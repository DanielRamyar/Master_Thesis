all: test export

testbench: decoder_n_bit_tb
export: Decoder_n_Bit_export
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

$(WORKDIR)/Types_Decoder_n_Bit.o: Types_Decoder_n_Bit.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Types_Decoder_n_Bit.vhdl

$(WORKDIR)/NOTGate_0.o: NOTGate_0.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_0.vhdl
$(WORKDIR)/NOTGate_1.o: NOTGate_1.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_1.vhdl
$(WORKDIR)/NOTGate_2.o: NOTGate_2.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_2.vhdl
$(WORKDIR)/NOTGate_3.o: NOTGate_3.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_3.vhdl
$(WORKDIR)/NOTGate_4.o: NOTGate_4.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_4.vhdl
$(WORKDIR)/NOTGate_5.o: NOTGate_5.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_5.vhdl
$(WORKDIR)/NOTGate_6.o: NOTGate_6.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_6.vhdl
$(WORKDIR)/NOTGate_7.o: NOTGate_7.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) NOTGate_7.vhdl
$(WORKDIR)/ANDGate_0.o: ANDGate_0.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_0.vhdl
$(WORKDIR)/ANDGate_1.o: ANDGate_1.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_1.vhdl
$(WORKDIR)/ANDGate_2.o: ANDGate_2.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_2.vhdl
$(WORKDIR)/ANDGate_3.o: ANDGate_3.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_3.vhdl
$(WORKDIR)/ANDGate_4.o: ANDGate_4.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_4.vhdl
$(WORKDIR)/ANDGate_5.o: ANDGate_5.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_5.vhdl
$(WORKDIR)/ANDGate_6.o: ANDGate_6.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_6.vhdl
$(WORKDIR)/ANDGate_7.o: ANDGate_7.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_7.vhdl
$(WORKDIR)/ANDGate_8.o: ANDGate_8.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_8.vhdl
$(WORKDIR)/ANDGate_9.o: ANDGate_9.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_9.vhdl
$(WORKDIR)/ANDGate_10.o: ANDGate_10.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_10.vhdl
$(WORKDIR)/ANDGate_11.o: ANDGate_11.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_11.vhdl
$(WORKDIR)/ANDGate_12.o: ANDGate_12.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_12.vhdl
$(WORKDIR)/ANDGate_13.o: ANDGate_13.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_13.vhdl
$(WORKDIR)/ANDGate_14.o: ANDGate_14.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_14.vhdl
$(WORKDIR)/ANDGate_15.o: ANDGate_15.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_15.vhdl
$(WORKDIR)/ANDGate_16.o: ANDGate_16.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_16.vhdl
$(WORKDIR)/ANDGate_17.o: ANDGate_17.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_17.vhdl
$(WORKDIR)/ANDGate_18.o: ANDGate_18.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_18.vhdl
$(WORKDIR)/ANDGate_19.o: ANDGate_19.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_19.vhdl
$(WORKDIR)/ANDGate_20.o: ANDGate_20.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_20.vhdl
$(WORKDIR)/ANDGate_21.o: ANDGate_21.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_21.vhdl
$(WORKDIR)/ANDGate_22.o: ANDGate_22.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_22.vhdl
$(WORKDIR)/ANDGate_23.o: ANDGate_23.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_23.vhdl
$(WORKDIR)/ANDGate_24.o: ANDGate_24.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_24.vhdl
$(WORKDIR)/ANDGate_25.o: ANDGate_25.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_25.vhdl
$(WORKDIR)/ANDGate_26.o: ANDGate_26.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_26.vhdl
$(WORKDIR)/ANDGate_27.o: ANDGate_27.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_27.vhdl
$(WORKDIR)/ANDGate_28.o: ANDGate_28.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_28.vhdl
$(WORKDIR)/ANDGate_29.o: ANDGate_29.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_29.vhdl
$(WORKDIR)/ANDGate_30.o: ANDGate_30.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_30.vhdl
$(WORKDIR)/ANDGate_31.o: ANDGate_31.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_31.vhdl
$(WORKDIR)/ANDGate_32.o: ANDGate_32.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_32.vhdl
$(WORKDIR)/ANDGate_33.o: ANDGate_33.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_33.vhdl
$(WORKDIR)/ANDGate_34.o: ANDGate_34.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_34.vhdl
$(WORKDIR)/ANDGate_35.o: ANDGate_35.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_35.vhdl
$(WORKDIR)/ANDGate_36.o: ANDGate_36.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_36.vhdl
$(WORKDIR)/ANDGate_37.o: ANDGate_37.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_37.vhdl
$(WORKDIR)/ANDGate_38.o: ANDGate_38.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_38.vhdl
$(WORKDIR)/ANDGate_39.o: ANDGate_39.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_39.vhdl
$(WORKDIR)/ANDGate_40.o: ANDGate_40.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_40.vhdl
$(WORKDIR)/ANDGate_41.o: ANDGate_41.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_41.vhdl
$(WORKDIR)/ANDGate_42.o: ANDGate_42.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_42.vhdl
$(WORKDIR)/ANDGate_43.o: ANDGate_43.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_43.vhdl
$(WORKDIR)/ANDGate_44.o: ANDGate_44.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_44.vhdl
$(WORKDIR)/ANDGate_45.o: ANDGate_45.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_45.vhdl
$(WORKDIR)/ANDGate_46.o: ANDGate_46.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_46.vhdl
$(WORKDIR)/ANDGate_47.o: ANDGate_47.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_47.vhdl
$(WORKDIR)/ANDGate_48.o: ANDGate_48.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_48.vhdl
$(WORKDIR)/ANDGate_49.o: ANDGate_49.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_49.vhdl
$(WORKDIR)/ANDGate_50.o: ANDGate_50.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_50.vhdl
$(WORKDIR)/ANDGate_51.o: ANDGate_51.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_51.vhdl
$(WORKDIR)/ANDGate_52.o: ANDGate_52.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_52.vhdl
$(WORKDIR)/ANDGate_53.o: ANDGate_53.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_53.vhdl
$(WORKDIR)/ANDGate_54.o: ANDGate_54.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_54.vhdl
$(WORKDIR)/ANDGate_55.o: ANDGate_55.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_55.vhdl
$(WORKDIR)/ANDGate_56.o: ANDGate_56.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_56.vhdl
$(WORKDIR)/ANDGate_57.o: ANDGate_57.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_57.vhdl
$(WORKDIR)/ANDGate_58.o: ANDGate_58.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_58.vhdl
$(WORKDIR)/ANDGate_59.o: ANDGate_59.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_59.vhdl
$(WORKDIR)/ANDGate_60.o: ANDGate_60.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_60.vhdl
$(WORKDIR)/ANDGate_61.o: ANDGate_61.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_61.vhdl
$(WORKDIR)/ANDGate_62.o: ANDGate_62.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_62.vhdl
$(WORKDIR)/ANDGate_63.o: ANDGate_63.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_63.vhdl
$(WORKDIR)/ANDGate_64.o: ANDGate_64.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_64.vhdl
$(WORKDIR)/ANDGate_65.o: ANDGate_65.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_65.vhdl
$(WORKDIR)/ANDGate_66.o: ANDGate_66.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_66.vhdl
$(WORKDIR)/ANDGate_67.o: ANDGate_67.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_67.vhdl
$(WORKDIR)/ANDGate_68.o: ANDGate_68.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_68.vhdl
$(WORKDIR)/ANDGate_69.o: ANDGate_69.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_69.vhdl
$(WORKDIR)/ANDGate_70.o: ANDGate_70.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_70.vhdl
$(WORKDIR)/ANDGate_71.o: ANDGate_71.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_71.vhdl
$(WORKDIR)/ANDGate_72.o: ANDGate_72.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_72.vhdl
$(WORKDIR)/ANDGate_73.o: ANDGate_73.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_73.vhdl
$(WORKDIR)/ANDGate_74.o: ANDGate_74.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_74.vhdl
$(WORKDIR)/ANDGate_75.o: ANDGate_75.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_75.vhdl
$(WORKDIR)/ANDGate_76.o: ANDGate_76.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_76.vhdl
$(WORKDIR)/ANDGate_77.o: ANDGate_77.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_77.vhdl
$(WORKDIR)/ANDGate_78.o: ANDGate_78.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_78.vhdl
$(WORKDIR)/ANDGate_79.o: ANDGate_79.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_79.vhdl
$(WORKDIR)/ANDGate_80.o: ANDGate_80.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_80.vhdl
$(WORKDIR)/ANDGate_81.o: ANDGate_81.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_81.vhdl
$(WORKDIR)/ANDGate_82.o: ANDGate_82.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_82.vhdl
$(WORKDIR)/ANDGate_83.o: ANDGate_83.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_83.vhdl
$(WORKDIR)/ANDGate_84.o: ANDGate_84.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_84.vhdl
$(WORKDIR)/ANDGate_85.o: ANDGate_85.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_85.vhdl
$(WORKDIR)/ANDGate_86.o: ANDGate_86.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_86.vhdl
$(WORKDIR)/ANDGate_87.o: ANDGate_87.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_87.vhdl
$(WORKDIR)/ANDGate_88.o: ANDGate_88.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_88.vhdl
$(WORKDIR)/ANDGate_89.o: ANDGate_89.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_89.vhdl
$(WORKDIR)/ANDGate_90.o: ANDGate_90.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_90.vhdl
$(WORKDIR)/ANDGate_91.o: ANDGate_91.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_91.vhdl
$(WORKDIR)/ANDGate_92.o: ANDGate_92.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_92.vhdl
$(WORKDIR)/ANDGate_93.o: ANDGate_93.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_93.vhdl
$(WORKDIR)/ANDGate_94.o: ANDGate_94.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_94.vhdl
$(WORKDIR)/ANDGate_95.o: ANDGate_95.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_95.vhdl
$(WORKDIR)/ANDGate_96.o: ANDGate_96.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_96.vhdl
$(WORKDIR)/ANDGate_97.o: ANDGate_97.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_97.vhdl
$(WORKDIR)/ANDGate_98.o: ANDGate_98.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_98.vhdl
$(WORKDIR)/ANDGate_99.o: ANDGate_99.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_99.vhdl
$(WORKDIR)/ANDGate_100.o: ANDGate_100.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_100.vhdl
$(WORKDIR)/ANDGate_101.o: ANDGate_101.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_101.vhdl
$(WORKDIR)/ANDGate_102.o: ANDGate_102.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_102.vhdl
$(WORKDIR)/ANDGate_103.o: ANDGate_103.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_103.vhdl
$(WORKDIR)/ANDGate_104.o: ANDGate_104.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_104.vhdl
$(WORKDIR)/ANDGate_105.o: ANDGate_105.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_105.vhdl
$(WORKDIR)/ANDGate_106.o: ANDGate_106.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_106.vhdl
$(WORKDIR)/ANDGate_107.o: ANDGate_107.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_107.vhdl
$(WORKDIR)/ANDGate_108.o: ANDGate_108.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_108.vhdl
$(WORKDIR)/ANDGate_109.o: ANDGate_109.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_109.vhdl
$(WORKDIR)/ANDGate_110.o: ANDGate_110.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_110.vhdl
$(WORKDIR)/ANDGate_111.o: ANDGate_111.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_111.vhdl
$(WORKDIR)/ANDGate_112.o: ANDGate_112.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_112.vhdl
$(WORKDIR)/ANDGate_113.o: ANDGate_113.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_113.vhdl
$(WORKDIR)/ANDGate_114.o: ANDGate_114.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_114.vhdl
$(WORKDIR)/ANDGate_115.o: ANDGate_115.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_115.vhdl
$(WORKDIR)/ANDGate_116.o: ANDGate_116.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_116.vhdl
$(WORKDIR)/ANDGate_117.o: ANDGate_117.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_117.vhdl
$(WORKDIR)/ANDGate_118.o: ANDGate_118.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_118.vhdl
$(WORKDIR)/ANDGate_119.o: ANDGate_119.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_119.vhdl
$(WORKDIR)/ANDGate_120.o: ANDGate_120.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_120.vhdl
$(WORKDIR)/ANDGate_121.o: ANDGate_121.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_121.vhdl
$(WORKDIR)/ANDGate_122.o: ANDGate_122.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_122.vhdl
$(WORKDIR)/ANDGate_123.o: ANDGate_123.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_123.vhdl
$(WORKDIR)/ANDGate_124.o: ANDGate_124.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_124.vhdl
$(WORKDIR)/ANDGate_125.o: ANDGate_125.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_125.vhdl
$(WORKDIR)/ANDGate_126.o: ANDGate_126.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_126.vhdl
$(WORKDIR)/ANDGate_127.o: ANDGate_127.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_127.vhdl
$(WORKDIR)/ANDGate_128.o: ANDGate_128.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_128.vhdl
$(WORKDIR)/ANDGate_129.o: ANDGate_129.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_129.vhdl
$(WORKDIR)/ANDGate_130.o: ANDGate_130.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_130.vhdl
$(WORKDIR)/ANDGate_131.o: ANDGate_131.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_131.vhdl
$(WORKDIR)/ANDGate_132.o: ANDGate_132.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_132.vhdl
$(WORKDIR)/ANDGate_133.o: ANDGate_133.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_133.vhdl
$(WORKDIR)/ANDGate_134.o: ANDGate_134.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_134.vhdl
$(WORKDIR)/ANDGate_135.o: ANDGate_135.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_135.vhdl
$(WORKDIR)/ANDGate_136.o: ANDGate_136.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_136.vhdl
$(WORKDIR)/ANDGate_137.o: ANDGate_137.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_137.vhdl
$(WORKDIR)/ANDGate_138.o: ANDGate_138.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_138.vhdl
$(WORKDIR)/ANDGate_139.o: ANDGate_139.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_139.vhdl
$(WORKDIR)/ANDGate_140.o: ANDGate_140.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_140.vhdl
$(WORKDIR)/ANDGate_141.o: ANDGate_141.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_141.vhdl
$(WORKDIR)/ANDGate_142.o: ANDGate_142.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_142.vhdl
$(WORKDIR)/ANDGate_143.o: ANDGate_143.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_143.vhdl
$(WORKDIR)/ANDGate_144.o: ANDGate_144.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_144.vhdl
$(WORKDIR)/ANDGate_145.o: ANDGate_145.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_145.vhdl
$(WORKDIR)/ANDGate_146.o: ANDGate_146.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_146.vhdl
$(WORKDIR)/ANDGate_147.o: ANDGate_147.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_147.vhdl
$(WORKDIR)/ANDGate_148.o: ANDGate_148.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_148.vhdl
$(WORKDIR)/ANDGate_149.o: ANDGate_149.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_149.vhdl
$(WORKDIR)/ANDGate_150.o: ANDGate_150.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_150.vhdl
$(WORKDIR)/ANDGate_151.o: ANDGate_151.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_151.vhdl
$(WORKDIR)/ANDGate_152.o: ANDGate_152.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_152.vhdl
$(WORKDIR)/ANDGate_153.o: ANDGate_153.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_153.vhdl
$(WORKDIR)/ANDGate_154.o: ANDGate_154.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_154.vhdl
$(WORKDIR)/ANDGate_155.o: ANDGate_155.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_155.vhdl
$(WORKDIR)/ANDGate_156.o: ANDGate_156.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_156.vhdl
$(WORKDIR)/ANDGate_157.o: ANDGate_157.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_157.vhdl
$(WORKDIR)/ANDGate_158.o: ANDGate_158.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_158.vhdl
$(WORKDIR)/ANDGate_159.o: ANDGate_159.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_159.vhdl
$(WORKDIR)/ANDGate_160.o: ANDGate_160.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_160.vhdl
$(WORKDIR)/ANDGate_161.o: ANDGate_161.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_161.vhdl
$(WORKDIR)/ANDGate_162.o: ANDGate_162.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_162.vhdl
$(WORKDIR)/ANDGate_163.o: ANDGate_163.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_163.vhdl
$(WORKDIR)/ANDGate_164.o: ANDGate_164.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_164.vhdl
$(WORKDIR)/ANDGate_165.o: ANDGate_165.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_165.vhdl
$(WORKDIR)/ANDGate_166.o: ANDGate_166.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_166.vhdl
$(WORKDIR)/ANDGate_167.o: ANDGate_167.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_167.vhdl
$(WORKDIR)/ANDGate_168.o: ANDGate_168.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_168.vhdl
$(WORKDIR)/ANDGate_169.o: ANDGate_169.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_169.vhdl
$(WORKDIR)/ANDGate_170.o: ANDGate_170.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_170.vhdl
$(WORKDIR)/ANDGate_171.o: ANDGate_171.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_171.vhdl
$(WORKDIR)/ANDGate_172.o: ANDGate_172.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_172.vhdl
$(WORKDIR)/ANDGate_173.o: ANDGate_173.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_173.vhdl
$(WORKDIR)/ANDGate_174.o: ANDGate_174.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_174.vhdl
$(WORKDIR)/ANDGate_175.o: ANDGate_175.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_175.vhdl
$(WORKDIR)/ANDGate_176.o: ANDGate_176.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_176.vhdl
$(WORKDIR)/ANDGate_177.o: ANDGate_177.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_177.vhdl
$(WORKDIR)/ANDGate_178.o: ANDGate_178.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_178.vhdl
$(WORKDIR)/ANDGate_179.o: ANDGate_179.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_179.vhdl
$(WORKDIR)/ANDGate_180.o: ANDGate_180.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_180.vhdl
$(WORKDIR)/ANDGate_181.o: ANDGate_181.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_181.vhdl
$(WORKDIR)/ANDGate_182.o: ANDGate_182.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_182.vhdl
$(WORKDIR)/ANDGate_183.o: ANDGate_183.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_183.vhdl
$(WORKDIR)/ANDGate_184.o: ANDGate_184.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_184.vhdl
$(WORKDIR)/ANDGate_185.o: ANDGate_185.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_185.vhdl
$(WORKDIR)/ANDGate_186.o: ANDGate_186.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_186.vhdl
$(WORKDIR)/ANDGate_187.o: ANDGate_187.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_187.vhdl
$(WORKDIR)/ANDGate_188.o: ANDGate_188.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_188.vhdl
$(WORKDIR)/ANDGate_189.o: ANDGate_189.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_189.vhdl
$(WORKDIR)/ANDGate_190.o: ANDGate_190.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_190.vhdl
$(WORKDIR)/ANDGate_191.o: ANDGate_191.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_191.vhdl
$(WORKDIR)/ANDGate_192.o: ANDGate_192.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_192.vhdl
$(WORKDIR)/ANDGate_193.o: ANDGate_193.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_193.vhdl
$(WORKDIR)/ANDGate_194.o: ANDGate_194.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_194.vhdl
$(WORKDIR)/ANDGate_195.o: ANDGate_195.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_195.vhdl
$(WORKDIR)/ANDGate_196.o: ANDGate_196.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_196.vhdl
$(WORKDIR)/ANDGate_197.o: ANDGate_197.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_197.vhdl
$(WORKDIR)/ANDGate_198.o: ANDGate_198.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_198.vhdl
$(WORKDIR)/ANDGate_199.o: ANDGate_199.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_199.vhdl
$(WORKDIR)/ANDGate_200.o: ANDGate_200.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_200.vhdl
$(WORKDIR)/ANDGate_201.o: ANDGate_201.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_201.vhdl
$(WORKDIR)/ANDGate_202.o: ANDGate_202.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_202.vhdl
$(WORKDIR)/ANDGate_203.o: ANDGate_203.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_203.vhdl
$(WORKDIR)/ANDGate_204.o: ANDGate_204.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_204.vhdl
$(WORKDIR)/ANDGate_205.o: ANDGate_205.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_205.vhdl
$(WORKDIR)/ANDGate_206.o: ANDGate_206.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_206.vhdl
$(WORKDIR)/ANDGate_207.o: ANDGate_207.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_207.vhdl
$(WORKDIR)/ANDGate_208.o: ANDGate_208.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_208.vhdl
$(WORKDIR)/ANDGate_209.o: ANDGate_209.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_209.vhdl
$(WORKDIR)/ANDGate_210.o: ANDGate_210.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_210.vhdl
$(WORKDIR)/ANDGate_211.o: ANDGate_211.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_211.vhdl
$(WORKDIR)/ANDGate_212.o: ANDGate_212.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_212.vhdl
$(WORKDIR)/ANDGate_213.o: ANDGate_213.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_213.vhdl
$(WORKDIR)/ANDGate_214.o: ANDGate_214.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_214.vhdl
$(WORKDIR)/ANDGate_215.o: ANDGate_215.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_215.vhdl
$(WORKDIR)/ANDGate_216.o: ANDGate_216.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_216.vhdl
$(WORKDIR)/ANDGate_217.o: ANDGate_217.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_217.vhdl
$(WORKDIR)/ANDGate_218.o: ANDGate_218.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_218.vhdl
$(WORKDIR)/ANDGate_219.o: ANDGate_219.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_219.vhdl
$(WORKDIR)/ANDGate_220.o: ANDGate_220.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_220.vhdl
$(WORKDIR)/ANDGate_221.o: ANDGate_221.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_221.vhdl
$(WORKDIR)/ANDGate_222.o: ANDGate_222.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_222.vhdl
$(WORKDIR)/ANDGate_223.o: ANDGate_223.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_223.vhdl
$(WORKDIR)/ANDGate_224.o: ANDGate_224.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_224.vhdl
$(WORKDIR)/ANDGate_225.o: ANDGate_225.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_225.vhdl
$(WORKDIR)/ANDGate_226.o: ANDGate_226.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_226.vhdl
$(WORKDIR)/ANDGate_227.o: ANDGate_227.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_227.vhdl
$(WORKDIR)/ANDGate_228.o: ANDGate_228.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_228.vhdl
$(WORKDIR)/ANDGate_229.o: ANDGate_229.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_229.vhdl
$(WORKDIR)/ANDGate_230.o: ANDGate_230.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_230.vhdl
$(WORKDIR)/ANDGate_231.o: ANDGate_231.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_231.vhdl
$(WORKDIR)/ANDGate_232.o: ANDGate_232.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_232.vhdl
$(WORKDIR)/ANDGate_233.o: ANDGate_233.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_233.vhdl
$(WORKDIR)/ANDGate_234.o: ANDGate_234.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_234.vhdl
$(WORKDIR)/ANDGate_235.o: ANDGate_235.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_235.vhdl
$(WORKDIR)/ANDGate_236.o: ANDGate_236.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_236.vhdl
$(WORKDIR)/ANDGate_237.o: ANDGate_237.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_237.vhdl
$(WORKDIR)/ANDGate_238.o: ANDGate_238.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_238.vhdl
$(WORKDIR)/ANDGate_239.o: ANDGate_239.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_239.vhdl
$(WORKDIR)/ANDGate_240.o: ANDGate_240.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_240.vhdl
$(WORKDIR)/ANDGate_241.o: ANDGate_241.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_241.vhdl
$(WORKDIR)/ANDGate_242.o: ANDGate_242.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_242.vhdl
$(WORKDIR)/ANDGate_243.o: ANDGate_243.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_243.vhdl
$(WORKDIR)/ANDGate_244.o: ANDGate_244.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_244.vhdl
$(WORKDIR)/ANDGate_245.o: ANDGate_245.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_245.vhdl
$(WORKDIR)/ANDGate_246.o: ANDGate_246.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_246.vhdl
$(WORKDIR)/ANDGate_247.o: ANDGate_247.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_247.vhdl
$(WORKDIR)/ANDGate_248.o: ANDGate_248.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_248.vhdl
$(WORKDIR)/ANDGate_249.o: ANDGate_249.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_249.vhdl
$(WORKDIR)/ANDGate_250.o: ANDGate_250.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_250.vhdl
$(WORKDIR)/ANDGate_251.o: ANDGate_251.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_251.vhdl
$(WORKDIR)/ANDGate_252.o: ANDGate_252.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_252.vhdl
$(WORKDIR)/ANDGate_253.o: ANDGate_253.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_253.vhdl
$(WORKDIR)/ANDGate_254.o: ANDGate_254.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_254.vhdl
$(WORKDIR)/ANDGate_255.o: ANDGate_255.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) ANDGate_255.vhdl
$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) csv_util.vhdl



$(WORKDIR)/Decoder_n_Bit.o: Decoder_n_Bit.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Decoder_n_Bit.o $(WORKDIR)/NOTGate_0.o $(WORKDIR)/NOTGate_1.o $(WORKDIR)/NOTGate_2.o $(WORKDIR)/NOTGate_3.o $(WORKDIR)/NOTGate_4.o $(WORKDIR)/NOTGate_5.o $(WORKDIR)/NOTGate_6.o $(WORKDIR)/NOTGate_7.o $(WORKDIR)/ANDGate_0.o $(WORKDIR)/ANDGate_1.o $(WORKDIR)/ANDGate_2.o $(WORKDIR)/ANDGate_3.o $(WORKDIR)/ANDGate_4.o $(WORKDIR)/ANDGate_5.o $(WORKDIR)/ANDGate_6.o $(WORKDIR)/ANDGate_7.o $(WORKDIR)/ANDGate_8.o $(WORKDIR)/ANDGate_9.o $(WORKDIR)/ANDGate_10.o $(WORKDIR)/ANDGate_11.o $(WORKDIR)/ANDGate_12.o $(WORKDIR)/ANDGate_13.o $(WORKDIR)/ANDGate_14.o $(WORKDIR)/ANDGate_15.o $(WORKDIR)/ANDGate_16.o $(WORKDIR)/ANDGate_17.o $(WORKDIR)/ANDGate_18.o $(WORKDIR)/ANDGate_19.o $(WORKDIR)/ANDGate_20.o $(WORKDIR)/ANDGate_21.o $(WORKDIR)/ANDGate_22.o $(WORKDIR)/ANDGate_23.o $(WORKDIR)/ANDGate_24.o $(WORKDIR)/ANDGate_25.o $(WORKDIR)/ANDGate_26.o $(WORKDIR)/ANDGate_27.o $(WORKDIR)/ANDGate_28.o $(WORKDIR)/ANDGate_29.o $(WORKDIR)/ANDGate_30.o $(WORKDIR)/ANDGate_31.o $(WORKDIR)/ANDGate_32.o $(WORKDIR)/ANDGate_33.o $(WORKDIR)/ANDGate_34.o $(WORKDIR)/ANDGate_35.o $(WORKDIR)/ANDGate_36.o $(WORKDIR)/ANDGate_37.o $(WORKDIR)/ANDGate_38.o $(WORKDIR)/ANDGate_39.o $(WORKDIR)/ANDGate_40.o $(WORKDIR)/ANDGate_41.o $(WORKDIR)/ANDGate_42.o $(WORKDIR)/ANDGate_43.o $(WORKDIR)/ANDGate_44.o $(WORKDIR)/ANDGate_45.o $(WORKDIR)/ANDGate_46.o $(WORKDIR)/ANDGate_47.o $(WORKDIR)/ANDGate_48.o $(WORKDIR)/ANDGate_49.o $(WORKDIR)/ANDGate_50.o $(WORKDIR)/ANDGate_51.o $(WORKDIR)/ANDGate_52.o $(WORKDIR)/ANDGate_53.o $(WORKDIR)/ANDGate_54.o $(WORKDIR)/ANDGate_55.o $(WORKDIR)/ANDGate_56.o $(WORKDIR)/ANDGate_57.o $(WORKDIR)/ANDGate_58.o $(WORKDIR)/ANDGate_59.o $(WORKDIR)/ANDGate_60.o $(WORKDIR)/ANDGate_61.o $(WORKDIR)/ANDGate_62.o $(WORKDIR)/ANDGate_63.o $(WORKDIR)/ANDGate_64.o $(WORKDIR)/ANDGate_65.o $(WORKDIR)/ANDGate_66.o $(WORKDIR)/ANDGate_67.o $(WORKDIR)/ANDGate_68.o $(WORKDIR)/ANDGate_69.o $(WORKDIR)/ANDGate_70.o $(WORKDIR)/ANDGate_71.o $(WORKDIR)/ANDGate_72.o $(WORKDIR)/ANDGate_73.o $(WORKDIR)/ANDGate_74.o $(WORKDIR)/ANDGate_75.o $(WORKDIR)/ANDGate_76.o $(WORKDIR)/ANDGate_77.o $(WORKDIR)/ANDGate_78.o $(WORKDIR)/ANDGate_79.o $(WORKDIR)/ANDGate_80.o $(WORKDIR)/ANDGate_81.o $(WORKDIR)/ANDGate_82.o $(WORKDIR)/ANDGate_83.o $(WORKDIR)/ANDGate_84.o $(WORKDIR)/ANDGate_85.o $(WORKDIR)/ANDGate_86.o $(WORKDIR)/ANDGate_87.o $(WORKDIR)/ANDGate_88.o $(WORKDIR)/ANDGate_89.o $(WORKDIR)/ANDGate_90.o $(WORKDIR)/ANDGate_91.o $(WORKDIR)/ANDGate_92.o $(WORKDIR)/ANDGate_93.o $(WORKDIR)/ANDGate_94.o $(WORKDIR)/ANDGate_95.o $(WORKDIR)/ANDGate_96.o $(WORKDIR)/ANDGate_97.o $(WORKDIR)/ANDGate_98.o $(WORKDIR)/ANDGate_99.o $(WORKDIR)/ANDGate_100.o $(WORKDIR)/ANDGate_101.o $(WORKDIR)/ANDGate_102.o $(WORKDIR)/ANDGate_103.o $(WORKDIR)/ANDGate_104.o $(WORKDIR)/ANDGate_105.o $(WORKDIR)/ANDGate_106.o $(WORKDIR)/ANDGate_107.o $(WORKDIR)/ANDGate_108.o $(WORKDIR)/ANDGate_109.o $(WORKDIR)/ANDGate_110.o $(WORKDIR)/ANDGate_111.o $(WORKDIR)/ANDGate_112.o $(WORKDIR)/ANDGate_113.o $(WORKDIR)/ANDGate_114.o $(WORKDIR)/ANDGate_115.o $(WORKDIR)/ANDGate_116.o $(WORKDIR)/ANDGate_117.o $(WORKDIR)/ANDGate_118.o $(WORKDIR)/ANDGate_119.o $(WORKDIR)/ANDGate_120.o $(WORKDIR)/ANDGate_121.o $(WORKDIR)/ANDGate_122.o $(WORKDIR)/ANDGate_123.o $(WORKDIR)/ANDGate_124.o $(WORKDIR)/ANDGate_125.o $(WORKDIR)/ANDGate_126.o $(WORKDIR)/ANDGate_127.o $(WORKDIR)/ANDGate_128.o $(WORKDIR)/ANDGate_129.o $(WORKDIR)/ANDGate_130.o $(WORKDIR)/ANDGate_131.o $(WORKDIR)/ANDGate_132.o $(WORKDIR)/ANDGate_133.o $(WORKDIR)/ANDGate_134.o $(WORKDIR)/ANDGate_135.o $(WORKDIR)/ANDGate_136.o $(WORKDIR)/ANDGate_137.o $(WORKDIR)/ANDGate_138.o $(WORKDIR)/ANDGate_139.o $(WORKDIR)/ANDGate_140.o $(WORKDIR)/ANDGate_141.o $(WORKDIR)/ANDGate_142.o $(WORKDIR)/ANDGate_143.o $(WORKDIR)/ANDGate_144.o $(WORKDIR)/ANDGate_145.o $(WORKDIR)/ANDGate_146.o $(WORKDIR)/ANDGate_147.o $(WORKDIR)/ANDGate_148.o $(WORKDIR)/ANDGate_149.o $(WORKDIR)/ANDGate_150.o $(WORKDIR)/ANDGate_151.o $(WORKDIR)/ANDGate_152.o $(WORKDIR)/ANDGate_153.o $(WORKDIR)/ANDGate_154.o $(WORKDIR)/ANDGate_155.o $(WORKDIR)/ANDGate_156.o $(WORKDIR)/ANDGate_157.o $(WORKDIR)/ANDGate_158.o $(WORKDIR)/ANDGate_159.o $(WORKDIR)/ANDGate_160.o $(WORKDIR)/ANDGate_161.o $(WORKDIR)/ANDGate_162.o $(WORKDIR)/ANDGate_163.o $(WORKDIR)/ANDGate_164.o $(WORKDIR)/ANDGate_165.o $(WORKDIR)/ANDGate_166.o $(WORKDIR)/ANDGate_167.o $(WORKDIR)/ANDGate_168.o $(WORKDIR)/ANDGate_169.o $(WORKDIR)/ANDGate_170.o $(WORKDIR)/ANDGate_171.o $(WORKDIR)/ANDGate_172.o $(WORKDIR)/ANDGate_173.o $(WORKDIR)/ANDGate_174.o $(WORKDIR)/ANDGate_175.o $(WORKDIR)/ANDGate_176.o $(WORKDIR)/ANDGate_177.o $(WORKDIR)/ANDGate_178.o $(WORKDIR)/ANDGate_179.o $(WORKDIR)/ANDGate_180.o $(WORKDIR)/ANDGate_181.o $(WORKDIR)/ANDGate_182.o $(WORKDIR)/ANDGate_183.o $(WORKDIR)/ANDGate_184.o $(WORKDIR)/ANDGate_185.o $(WORKDIR)/ANDGate_186.o $(WORKDIR)/ANDGate_187.o $(WORKDIR)/ANDGate_188.o $(WORKDIR)/ANDGate_189.o $(WORKDIR)/ANDGate_190.o $(WORKDIR)/ANDGate_191.o $(WORKDIR)/ANDGate_192.o $(WORKDIR)/ANDGate_193.o $(WORKDIR)/ANDGate_194.o $(WORKDIR)/ANDGate_195.o $(WORKDIR)/ANDGate_196.o $(WORKDIR)/ANDGate_197.o $(WORKDIR)/ANDGate_198.o $(WORKDIR)/ANDGate_199.o $(WORKDIR)/ANDGate_200.o $(WORKDIR)/ANDGate_201.o $(WORKDIR)/ANDGate_202.o $(WORKDIR)/ANDGate_203.o $(WORKDIR)/ANDGate_204.o $(WORKDIR)/ANDGate_205.o $(WORKDIR)/ANDGate_206.o $(WORKDIR)/ANDGate_207.o $(WORKDIR)/ANDGate_208.o $(WORKDIR)/ANDGate_209.o $(WORKDIR)/ANDGate_210.o $(WORKDIR)/ANDGate_211.o $(WORKDIR)/ANDGate_212.o $(WORKDIR)/ANDGate_213.o $(WORKDIR)/ANDGate_214.o $(WORKDIR)/ANDGate_215.o $(WORKDIR)/ANDGate_216.o $(WORKDIR)/ANDGate_217.o $(WORKDIR)/ANDGate_218.o $(WORKDIR)/ANDGate_219.o $(WORKDIR)/ANDGate_220.o $(WORKDIR)/ANDGate_221.o $(WORKDIR)/ANDGate_222.o $(WORKDIR)/ANDGate_223.o $(WORKDIR)/ANDGate_224.o $(WORKDIR)/ANDGate_225.o $(WORKDIR)/ANDGate_226.o $(WORKDIR)/ANDGate_227.o $(WORKDIR)/ANDGate_228.o $(WORKDIR)/ANDGate_229.o $(WORKDIR)/ANDGate_230.o $(WORKDIR)/ANDGate_231.o $(WORKDIR)/ANDGate_232.o $(WORKDIR)/ANDGate_233.o $(WORKDIR)/ANDGate_234.o $(WORKDIR)/ANDGate_235.o $(WORKDIR)/ANDGate_236.o $(WORKDIR)/ANDGate_237.o $(WORKDIR)/ANDGate_238.o $(WORKDIR)/ANDGate_239.o $(WORKDIR)/ANDGate_240.o $(WORKDIR)/ANDGate_241.o $(WORKDIR)/ANDGate_242.o $(WORKDIR)/ANDGate_243.o $(WORKDIR)/ANDGate_244.o $(WORKDIR)/ANDGate_245.o $(WORKDIR)/ANDGate_246.o $(WORKDIR)/ANDGate_247.o $(WORKDIR)/ANDGate_248.o $(WORKDIR)/ANDGate_249.o $(WORKDIR)/ANDGate_250.o $(WORKDIR)/ANDGate_251.o $(WORKDIR)/ANDGate_252.o $(WORKDIR)/ANDGate_253.o $(WORKDIR)/ANDGate_254.o $(WORKDIR)/ANDGate_255.o $(WORKDIR)/csv_util.o 

	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder_n_Bit.vhdl

$(WORKDIR)/TestBench_Decoder_n_Bit.o: TestBench_Decoder_n_Bit.vhdl $(WORKDIR)/Decoder_n_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) TestBench_Decoder_n_Bit.vhdl

decoder_n_bit_tb: $(WORKDIR)/TestBench_Decoder_n_Bit.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder_n_Bit_tb

Decoder_n_Bit_export: $(WORKDIR)/Decoder_n_Bit.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Export_Decoder_n_Bit.vhdl

test: decoder_n_bit_tb
	cp "../trace.csv" .
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) Decoder_n_Bit_tb --vcd=$(VCDFILE)

clean:
	rm -rf $(WORKDIR) *.o decoder_n_bit_tb


.PHONY: all clean test export build

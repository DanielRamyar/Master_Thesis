
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

--library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;

--library CUSTOM_TYPES;
use work.CUSTOM_TYPES.ALL;

use work.csv_util.all;

-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END

entity SingleCycleRISCV_tb is
end;

architecture TestBench of SingleCycleRISCV_tb is

  signal CLOCK : Std_logic;
  signal StopClock : BOOLEAN;
  signal RESET : Std_logic;
  signal ENABLE : Std_logic;

  signal GoTo_Output_Value : T_SYSTEM_BOOL;
  signal PCSel_Value : T_SYSTEM_BOOL;
  signal ANDGate_Output_Value : T_SYSTEM_BOOL;
  signal Next_Output_Address : T_SYSTEM_UINT64;
  signal ALU_Output_Value : T_SYSTEM_INT64;
  signal Mux1_Output_Address : T_SYSTEM_UINT64;
  signal PC_Output_Address : T_SYSTEM_UINT64;
  signal Read_Register_1_Address : T_SYSTEM_UINT32;
  signal Read_Register_2_Address : T_SYSTEM_UINT32;
  signal Write_Register_Address : T_SYSTEM_UINT32;
  signal Instruction_Current : T_SYSTEM_UINT32;
  signal CPU_Running : T_SYSTEM_BOOL;
  signal WB_Data_Data : T_SYSTEM_INT64;
  signal WB_WriteRegister_Address : T_SYSTEM_UINT32;
  signal WB_WriteControl_Enable : T_SYSTEM_BOOL;
  signal RS1_Data : T_SYSTEM_INT64;
  signal RS2_Data : T_SYSTEM_INT64;
  signal Immediate_Immediate : T_SYSTEM_INT64;
  signal RegWrite_Enable : T_SYSTEM_BOOL;
  signal ALUSrc1_Enable : T_SYSTEM_BOOL;
  signal ALUSrc2_Enable : T_SYSTEM_BOOL;
  signal ALUOP_Value : T_SYSTEM_UINT8;
  signal BJSIGN_Value : T_SYSTEM_UINT8;
  signal MemRead_Enable : T_SYSTEM_BOOL;
  signal MemWrite_Enable : T_SYSTEM_BOOL;
  signal WBSel_Value : T_SYSTEM_UINT8;
  signal SizeAndSign_Value : T_SYSTEM_UINT8;
  signal Mux4_Output_Data : T_SYSTEM_INT64;
  signal Mux2_Output_Data : T_SYSTEM_INT64;
  signal Mux3_Output_Data : T_SYSTEM_INT64;
  signal DM_Output_Data : T_SYSTEM_INT64;

begin

  uut: entity work.SingleCycleRISCV
  port map (

    GoTo_Output_Value => GoTo_Output_Value,
    PCSel_Value => PCSel_Value,
    ANDGate_Output_Value => ANDGate_Output_Value,
    Next_Output_Address => Next_Output_Address,
    ALU_Output_Value => ALU_Output_Value,
    Mux1_Output_Address => Mux1_Output_Address,
    PC_Output_Address => PC_Output_Address,
    Read_Register_1_Address => Read_Register_1_Address,
    Read_Register_2_Address => Read_Register_2_Address,
    Write_Register_Address => Write_Register_Address,
    Instruction_Current => Instruction_Current,
    CPU_Running => CPU_Running,
    WB_Data_Data => WB_Data_Data,
    WB_WriteRegister_Address => WB_WriteRegister_Address,
    WB_WriteControl_Enable => WB_WriteControl_Enable,
    RS1_Data => RS1_Data,
    RS2_Data => RS2_Data,
    Immediate_Immediate => Immediate_Immediate,
    RegWrite_Enable => RegWrite_Enable,
    ALUSrc1_Enable => ALUSrc1_Enable,
    ALUSrc2_Enable => ALUSrc2_Enable,
    ALUOP_Value => ALUOP_Value,
    BJSIGN_Value => BJSIGN_Value,
    MemRead_Enable => MemRead_Enable,
    MemWrite_Enable => MemWrite_Enable,
    WBSel_Value => WBSel_Value,
    SizeAndSign_Value => SizeAndSign_Value,
    Mux4_Output_Data => Mux4_Output_Data,
    Mux2_Output_Data => Mux2_Output_Data,
    Mux3_Output_Data => Mux3_Output_Data,
    DM_Output_Data => DM_Output_Data,

    ENB => ENABLE,
    RST => RESET,
    CLK => CLOCK
  );

  Clk: process
  begin
    while not StopClock loop
      CLOCK <= '1';
      wait for 5 NS;
      CLOCK <= '0';
      wait for 5 NS;
    end loop;
    wait;
  end process;


TraceFileTester: process
    file F: TEXT;
    variable L: LINE;
    variable Status: FILE_OPEN_STATUS;
    constant filename : string := "./trace.csv";
    variable clockcycle : integer := 0;
    variable tmp : CSV_LINE_T;
    variable readOK : boolean;
    variable fieldno : integer := 0;
    variable failures : integer := 0;
    variable newfailures: integer := 0;
    variable first_failure_tick : integer := -1;
    variable first_round : boolean := true;

begin

    -- #### USER-DATA-CONDITONING-START
    -- #### USER-DATA-CONDITONING-END

    FILE_OPEN(Status, F, filename, READ_MODE);
    if Status /= OPEN_OK then
        report "Failed to open CSV trace file" severity Failure;
    else
        -- Verify the headers
        READLINE(F, L);

        fieldno := 0;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ALU_Output.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ALU_Output.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ALUOP.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ALUOP.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ALUSrc1.Enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ALUSrc1.Enable" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ALUSrc2.Enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ALUSrc2.Enable" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ANDGate_Output.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ANDGate_Output.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "BJSIGN.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected BJSIGN.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "CPU.Running") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected CPU.Running" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DM_Output.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DM_Output.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "GoTo_Output.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected GoTo_Output.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Immediate.Immediate") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Immediate.Immediate" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Instruction.Current") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Instruction.Current" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "MemRead.Enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected MemRead.Enable" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "MemWrite.Enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected MemWrite.Enable" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Mux1_Output.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Mux1_Output.Address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Mux2_Output.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Mux2_Output.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Mux3_Output.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Mux3_Output.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Mux4_Output.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Mux4_Output.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Next_Output.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Next_Output.Address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "PC_Output.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected PC_Output.Address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "PCSel.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected PCSel.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Read_Register_1.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Read_Register_1.Address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Read_Register_2.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Read_Register_2.Address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "RegWrite.Enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RegWrite.Enable" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "RS1.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RS1.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "RS2.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RS2.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "SizeAndSign.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected SizeAndSign.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "WB_Data.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected WB_Data.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "WB_WriteControl.Enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected WB_WriteControl.Enable" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "WB_WriteRegister.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected WB_WriteRegister.Address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "WBSel.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected WBSel.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Write_Register.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Write_Register.Address" severity Failure;
        fieldno := fieldno + 1;

        RESET <= '1';
        ENABLE <= '0';
        wait for 5 NS;
        RESET <= '0';
        ENABLE <= '1';

        -- Read a line each clock
        while not ENDFILE(F) loop
            READLINE(F, L);

            fieldno := 0;
            newfailures := 0;


            if first_round then
                wait until rising_edge(CLOCK);
                first_round := false;
            end if;

            -- Wait until the signals are settled before veriying the results
            wait until falling_edge(CLOCK);

            -- Compare each signal with the value in the CSV file
	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ALU_Output_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ALU_Output_Value in cycle " & integer'image(clockcycle) & " was: " & str(ALU_Output_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ALUOP_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ALUOP_Value in cycle " & integer'image(clockcycle) & " was: " & str(ALUOP_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ALUSrc1_Enable), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ALUSrc1_Enable in cycle " & integer'image(clockcycle) & " was: " & str(ALUSrc1_Enable) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ALUSrc2_Enable), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ALUSrc2_Enable in cycle " & integer'image(clockcycle) & " was: " & str(ALUSrc2_Enable) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ANDGate_Output_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ANDGate_Output_Value in cycle " & integer'image(clockcycle) & " was: " & str(ANDGate_Output_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(BJSIGN_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for BJSIGN_Value in cycle " & integer'image(clockcycle) & " was: " & str(BJSIGN_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(CPU_Running), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for CPU_Running in cycle " & integer'image(clockcycle) & " was: " & str(CPU_Running) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DM_Output_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DM_Output_Data in cycle " & integer'image(clockcycle) & " was: " & str(DM_Output_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(GoTo_Output_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for GoTo_Output_Value in cycle " & integer'image(clockcycle) & " was: " & str(GoTo_Output_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Immediate_Immediate), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Immediate_Immediate in cycle " & integer'image(clockcycle) & " was: " & str(Immediate_Immediate) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Instruction_Current), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Instruction_Current in cycle " & integer'image(clockcycle) & " was: " & str(Instruction_Current) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(MemRead_Enable), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for MemRead_Enable in cycle " & integer'image(clockcycle) & " was: " & str(MemRead_Enable) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(MemWrite_Enable), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for MemWrite_Enable in cycle " & integer'image(clockcycle) & " was: " & str(MemWrite_Enable) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Mux1_Output_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Mux1_Output_Address in cycle " & integer'image(clockcycle) & " was: " & str(Mux1_Output_Address) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Mux2_Output_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Mux2_Output_Data in cycle " & integer'image(clockcycle) & " was: " & str(Mux2_Output_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Mux3_Output_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Mux3_Output_Data in cycle " & integer'image(clockcycle) & " was: " & str(Mux3_Output_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Mux4_Output_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Mux4_Output_Data in cycle " & integer'image(clockcycle) & " was: " & str(Mux4_Output_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Next_Output_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Next_Output_Address in cycle " & integer'image(clockcycle) & " was: " & str(Next_Output_Address) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(PC_Output_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for PC_Output_Address in cycle " & integer'image(clockcycle) & " was: " & str(PC_Output_Address) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(PCSel_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for PCSel_Value in cycle " & integer'image(clockcycle) & " was: " & str(PCSel_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Read_Register_1_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Read_Register_1_Address in cycle " & integer'image(clockcycle) & " was: " & str(Read_Register_1_Address) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Read_Register_2_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Read_Register_2_Address in cycle " & integer'image(clockcycle) & " was: " & str(Read_Register_2_Address) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(RegWrite_Enable), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for RegWrite_Enable in cycle " & integer'image(clockcycle) & " was: " & str(RegWrite_Enable) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(RS1_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for RS1_Data in cycle " & integer'image(clockcycle) & " was: " & str(RS1_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(RS2_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for RS2_Data in cycle " & integer'image(clockcycle) & " was: " & str(RS2_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(SizeAndSign_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for SizeAndSign_Value in cycle " & integer'image(clockcycle) & " was: " & str(SizeAndSign_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(WB_Data_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for WB_Data_Data in cycle " & integer'image(clockcycle) & " was: " & str(WB_Data_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(WB_WriteControl_Enable), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for WB_WriteControl_Enable in cycle " & integer'image(clockcycle) & " was: " & str(WB_WriteControl_Enable) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(WB_WriteRegister_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for WB_WriteRegister_Address in cycle " & integer'image(clockcycle) & " was: " & str(WB_WriteRegister_Address) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(WBSel_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for WBSel_Value in cycle " & integer'image(clockcycle) & " was: " & str(WBSel_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Write_Register_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Write_Register_Address in cycle " & integer'image(clockcycle) & " was: " & str(Write_Register_Address) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

            failures := failures + newfailures;
            if newfailures = 0 then
                first_failure_tick := -1;
            elsif first_failure_tick = -1 then
                first_failure_tick := clockcycle;
            else
                if clockcycle - first_failure_tick >= 5 then
                    report "Stopping simulation due to five consecutive failed cycles" severity error;
                    StopClock <= true;
                elsif failures > 20 then
                    report "Stopping simulation after 20 failures" severity error;
                    StopClock <= true;
                end if;
            end if;

            clockcycle := clockcycle + 1;
        end loop;

        FILE_CLOSE(F);
    end if;

    if failures = 0 then
        report "completed successfully after " & integer'image(clockcycle) & " clockcycles";
    else
        report "completed with " & integer'image(failures) & " error(s) after " & integer'image(clockcycle) & " clockcycle(s)";
    end if;
    StopClock <= true;

    wait;
end process;
end architecture TestBench;
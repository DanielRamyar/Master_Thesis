
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

  signal PC_Input_Address : T_SYSTEM_UINT32;
  signal ProgramCounter_To_InstructionMemory_Address : T_SYSTEM_UINT32;
  signal Read_Register_1_address : T_SYSTEM_UINT32;
  signal Read_Register_2_address : T_SYSTEM_UINT32;
  signal Write_Register_address : T_SYSTEM_UINT32;
  signal Write_Data_Data : T_SYSTEM_INT32;
  signal Write_Control_Enable : T_SYSTEM_BOOL;
  signal Reg1_To_ALU_Data : T_SYSTEM_INT32;
  signal Reg2_To_Mux_Data : T_SYSTEM_INT32;
  signal OperationCode_Value : T_SYSTEM_UINT8;
  signal Reg_Mux_Output_Data : T_SYSTEM_INT32;
  signal ALU_Output_Value : T_SYSTEM_INT32;
  signal Zero_out_Value : T_SYSTEM_BOOL;

begin

  uut: entity work.SingleCycleRISCV
  port map (

    PC_Input_Address => PC_Input_Address,
    ProgramCounter_To_InstructionMemory_Address => ProgramCounter_To_InstructionMemory_Address,
    Read_Register_1_address => Read_Register_1_address,
    Read_Register_2_address => Read_Register_2_address,
    Write_Register_address => Write_Register_address,
    Write_Data_Data => Write_Data_Data,
    Write_Control_Enable => Write_Control_Enable,
    Reg1_To_ALU_Data => Reg1_To_ALU_Data,
    Reg2_To_Mux_Data => Reg2_To_Mux_Data,
    OperationCode_Value => OperationCode_Value,
    Reg_Mux_Output_Data => Reg_Mux_Output_Data,
    ALU_Output_Value => ALU_Output_Value,
    Zero_out_Value => Zero_out_Value,

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
        assert are_strings_equal(tmp, "OperationCode.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected OperationCode.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "PC_Input.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected PC_Input.Address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Read_Register_1.address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Read_Register_1.address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Read_Register_2.address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Read_Register_2.address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Write_Control.Enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Write_Control.Enable" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Write_Data.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Write_Data.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Write_Register.address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Write_Register.address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ALU_Output.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ALU_Output.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ProgramCounter_To_InstructionMemory.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ProgramCounter_To_InstructionMemory.Address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Reg_Mux_Output.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Reg_Mux_Output.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Reg1_To_ALU.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Reg1_To_ALU.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Reg2_To_Mux.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Reg2_To_Mux.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Zero_out.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Zero_out.Value" severity Failure;
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

            -- Write all driver signals out on the clock edge,
            -- except on the first round, where we make sure the reset
            -- values are propagated _before_ the initial clock edge
            if not first_round then
                wait until rising_edge(CLOCK);
            end if;

            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                OperationCode_Value <= (others => 'U');
            else
                OperationCode_Value <= unsigned(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                PC_Input_Address <= (others => 'U');
            else
                PC_Input_Address <= unsigned(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                Read_Register_1_address <= (others => 'U');
            else
                Read_Register_1_address <= unsigned(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                Read_Register_2_address <= (others => 'U');
            else
                Read_Register_2_address <= unsigned(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                Write_Control_Enable <= 'U';
            else
                Write_Control_Enable <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                Write_Data_Data <= (others => 'U');
            else
                Write_Data_Data <= signed(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                Write_Register_address <= (others => 'U');
            else
                Write_Register_address <= unsigned(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;

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
            	if not are_strings_equal(str(ProgramCounter_To_InstructionMemory_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ProgramCounter_To_InstructionMemory_Address in cycle " & integer'image(clockcycle) & " was: " & str(ProgramCounter_To_InstructionMemory_Address) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Reg_Mux_Output_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Reg_Mux_Output_Data in cycle " & integer'image(clockcycle) & " was: " & str(Reg_Mux_Output_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Reg1_To_ALU_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Reg1_To_ALU_Data in cycle " & integer'image(clockcycle) & " was: " & str(Reg1_To_ALU_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Reg2_To_Mux_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Reg2_To_Mux_Data in cycle " & integer'image(clockcycle) & " was: " & str(Reg2_To_Mux_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(Zero_out_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Zero_out_Value in cycle " & integer'image(clockcycle) & " was: " & str(Zero_out_Value) & " but should have been: " & truncate(tmp) severity Error;
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
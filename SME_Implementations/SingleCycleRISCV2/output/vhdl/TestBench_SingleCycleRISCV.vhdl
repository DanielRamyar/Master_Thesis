
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

  signal GoTo_Value : T_SYSTEM_BOOL;
  signal PCSel_Value : T_SYSTEM_BOOL;
  signal ANDGate_Output_Value : T_SYSTEM_BOOL;
  signal Next_Output_Address : T_SYSTEM_UINT64;
  signal ALU_Output_Address : T_SYSTEM_UINT64;
  signal Mux1_Output_Address : T_SYSTEM_UINT64;
  signal PC_Output_Address : T_SYSTEM_UINT64;
  signal Read_Register_1_Address : T_SYSTEM_UINT32;
  signal Read_Register_2_Address : T_SYSTEM_UINT32;
  signal Write_Register_Address : T_SYSTEM_UINT32;
  signal Instruction_Current : T_SYSTEM_UINT32;
  signal CPU_Running : T_SYSTEM_BOOL;

begin

  uut: entity work.SingleCycleRISCV
  port map (

    GoTo_Value => GoTo_Value,
    PCSel_Value => PCSel_Value,
    ANDGate_Output_Value => ANDGate_Output_Value,
    Next_Output_Address => Next_Output_Address,
    ALU_Output_Address => ALU_Output_Address,
    Mux1_Output_Address => Mux1_Output_Address,
    PC_Output_Address => PC_Output_Address,
    Read_Register_1_Address => Read_Register_1_Address,
    Read_Register_2_Address => Read_Register_2_Address,
    Write_Register_Address => Write_Register_Address,
    Instruction_Current => Instruction_Current,
    CPU_Running => CPU_Running,

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
        assert are_strings_equal(tmp, "ALU_Output.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ALU_Output.Address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ANDGate_Output.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ANDGate_Output.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "CPU.Running") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected CPU.Running" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "GoTo.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected GoTo.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Instruction.Current") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Instruction.Current" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Mux1_Output.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Mux1_Output.Address" severity Failure;
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
            	if not are_strings_equal(str(ALU_Output_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ALU_Output_Address in cycle " & integer'image(clockcycle) & " was: " & str(ALU_Output_Address) & " but should have been: " & truncate(tmp) severity Error;
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
            	if not are_strings_equal(str(CPU_Running), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for CPU_Running in cycle " & integer'image(clockcycle) & " was: " & str(CPU_Running) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(GoTo_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for GoTo_Value in cycle " & integer'image(clockcycle) & " was: " & str(GoTo_Value) & " but should have been: " & truncate(tmp) severity Error;
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
            	if not are_strings_equal(str(Mux1_Output_Address), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Mux1_Output_Address in cycle " & integer'image(clockcycle) & " was: " & str(Mux1_Output_Address) & " but should have been: " & truncate(tmp) severity Error;
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
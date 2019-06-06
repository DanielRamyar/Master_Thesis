
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

entity FullAdder_2_Bit_tb is
end;

architecture TestBench of FullAdder_2_Bit_tb is

  signal CLOCK : Std_logic;
  signal StopClock : BOOLEAN;
  signal RESET : Std_logic;
  signal ENABLE : Std_logic;

  signal A_Value : T_SYSTEM_BOOL;
  signal NOT_A_Value : T_SYSTEM_BOOL;
  signal B_Value : T_SYSTEM_BOOL;
  signal NOT_B_Value : T_SYSTEM_BOOL;
  signal CarryIn_Value : T_SYSTEM_BOOL;
  signal NOT_CarryIn_Value : T_SYSTEM_BOOL;
  signal ANDOutput_0_Value : T_SYSTEM_BOOL;
  signal ANDOutput_1_Value : T_SYSTEM_BOOL;
  signal ANDOutput_2_Value : T_SYSTEM_BOOL;
  signal ANDOutput_3_Value : T_SYSTEM_BOOL;
  signal ANDOutput_4_Value : T_SYSTEM_BOOL;
  signal ANDOutput_5_Value : T_SYSTEM_BOOL;
  signal ANDOutput_6_Value : T_SYSTEM_BOOL;
  signal SUM_Value : T_SYSTEM_BOOL;
  signal CarryOut_Value : T_SYSTEM_BOOL;

begin

  uut: entity work.FullAdder_2_Bit
  port map (

    A_Value => A_Value,
    NOT_A_Value => NOT_A_Value,
    B_Value => B_Value,
    NOT_B_Value => NOT_B_Value,
    CarryIn_Value => CarryIn_Value,
    NOT_CarryIn_Value => NOT_CarryIn_Value,
    ANDOutput_0_Value => ANDOutput_0_Value,
    ANDOutput_1_Value => ANDOutput_1_Value,
    ANDOutput_2_Value => ANDOutput_2_Value,
    ANDOutput_3_Value => ANDOutput_3_Value,
    ANDOutput_4_Value => ANDOutput_4_Value,
    ANDOutput_5_Value => ANDOutput_5_Value,
    ANDOutput_6_Value => ANDOutput_6_Value,
    SUM_Value => SUM_Value,
    CarryOut_Value => CarryOut_Value,

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
        assert are_strings_equal(tmp, "A.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected A.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "B.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected B.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "CarryIn.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected CarryIn.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ANDOutput_0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ANDOutput_0.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ANDOutput_1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ANDOutput_1.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ANDOutput_2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ANDOutput_2.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ANDOutput_3.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ANDOutput_3.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ANDOutput_4.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ANDOutput_4.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ANDOutput_5.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ANDOutput_5.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "ANDOutput_6.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ANDOutput_6.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "CarryOut.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected CarryOut.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "NOT_A.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected NOT_A.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "NOT_B.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected NOT_B.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "NOT_CarryIn.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected NOT_CarryIn.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "SUM.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected SUM.Value" severity Failure;
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
                A_Value <= 'U';
            else
                A_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                B_Value <= 'U';
            else
                B_Value <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                CarryIn_Value <= 'U';
            else
                CarryIn_Value <= to_std_logic(truncate(tmp));
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
            	if not are_strings_equal(str(ANDOutput_0_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ANDOutput_0_Value in cycle " & integer'image(clockcycle) & " was: " & str(ANDOutput_0_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ANDOutput_1_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ANDOutput_1_Value in cycle " & integer'image(clockcycle) & " was: " & str(ANDOutput_1_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ANDOutput_2_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ANDOutput_2_Value in cycle " & integer'image(clockcycle) & " was: " & str(ANDOutput_2_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ANDOutput_3_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ANDOutput_3_Value in cycle " & integer'image(clockcycle) & " was: " & str(ANDOutput_3_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ANDOutput_4_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ANDOutput_4_Value in cycle " & integer'image(clockcycle) & " was: " & str(ANDOutput_4_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ANDOutput_5_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ANDOutput_5_Value in cycle " & integer'image(clockcycle) & " was: " & str(ANDOutput_5_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(ANDOutput_6_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for ANDOutput_6_Value in cycle " & integer'image(clockcycle) & " was: " & str(ANDOutput_6_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(CarryOut_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for CarryOut_Value in cycle " & integer'image(clockcycle) & " was: " & str(CarryOut_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(NOT_A_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for NOT_A_Value in cycle " & integer'image(clockcycle) & " was: " & str(NOT_A_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(NOT_B_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for NOT_B_Value in cycle " & integer'image(clockcycle) & " was: " & str(NOT_B_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(NOT_CarryIn_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for NOT_CarryIn_Value in cycle " & integer'image(clockcycle) & " was: " & str(NOT_CarryIn_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(SUM_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for SUM_Value in cycle " & integer'image(clockcycle) & " was: " & str(SUM_Value) & " but should have been: " & truncate(tmp) severity Error;
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
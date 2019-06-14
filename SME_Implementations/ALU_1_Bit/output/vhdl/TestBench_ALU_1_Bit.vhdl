
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

entity ALU_1_Bit_tb is
end;

architecture TestBench of ALU_1_Bit_tb is

  signal CLOCK : Std_logic;
  signal StopClock : BOOLEAN;
  signal RESET : Std_logic;
  signal ENABLE : Std_logic;

  signal OperationCode_Value : T_SYSTEM_UINT8;
  signal A_Value : T_SYSTEM_UINT32;
  signal B_Value : T_SYSTEM_UINT32;
  signal Output_Value : T_SYSTEM_UINT32;

begin

  uut: entity work.ALU_1_Bit
  port map (

    OperationCode_Value => OperationCode_Value,
    A_Value => A_Value,
    B_Value => B_Value,
    Output_Value => Output_Value,

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
        assert are_strings_equal(tmp, "OperationCode.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected OperationCode.Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "Output.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected Output.Value" severity Failure;
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
                A_Value <= (others => 'U');
            else
                A_Value <= unsigned(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                B_Value <= (others => 'U');
            else
                B_Value <= unsigned(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                OperationCode_Value <= (others => 'U');
            else
                OperationCode_Value <= unsigned(to_std_logic_vector(truncate(tmp)));
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
            	if not are_strings_equal(str(Output_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for Output_Value in cycle " & integer'image(clockcycle) & " was: " & str(Output_Value) & " but should have been: " & truncate(tmp) severity Error;
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

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

entity Decoder_1_Bit_tb is
end;

architecture TestBench of Decoder_1_Bit_tb is

  signal CLOCK : Std_logic;
  signal StopClock : BOOLEAN;
  signal RESET : Std_logic;
  signal ENABLE : Std_logic;

  signal DecoderInput_0_in_Value : T_SYSTEM_BOOL;
  signal NOTOutput_0_out_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_0_out_Value : T_SYSTEM_BOOL;
  signal DecoderOutput_1_out_Value : T_SYSTEM_BOOL;

begin

  uut: entity work.Decoder_1_Bit
  port map (

    DecoderInput_0_in_Value => DecoderInput_0_in_Value,
    NOTOutput_0_out_Value => NOTOutput_0_out_Value,
    DecoderOutput_0_out_Value => DecoderOutput_0_out_Value,
    DecoderOutput_1_out_Value => DecoderOutput_1_out_Value,

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
        assert are_strings_equal(tmp, "DecoderInput_0.in_Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderInput_0.in_Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_0.out_Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_0.out_Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "DecoderOutput_1.out_Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected DecoderOutput_1.out_Value" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "NOTOutput_0.out_Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected NOTOutput_0.out_Value" severity Failure;
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
                DecoderInput_0_in_Value <= 'U';
            else
                DecoderInput_0_in_Value <= to_std_logic(truncate(tmp));
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
            	if not are_strings_equal(str(DecoderOutput_0_out_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_0_out_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_0_out_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(DecoderOutput_1_out_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for DecoderOutput_1_out_Value in cycle " & integer'image(clockcycle) & " was: " & str(DecoderOutput_1_out_Value) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(NOTOutput_0_out_Value), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for NOTOutput_0_out_Value in cycle " & integer'image(clockcycle) & " was: " & str(NOTOutput_0_out_Value) & " but should have been: " & truncate(tmp) severity Error;
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
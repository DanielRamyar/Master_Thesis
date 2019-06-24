
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

entity vhdl_Register_tb is
end;

architecture TestBench of vhdl_Register_tb is

  signal CLOCK : Std_logic;
  signal StopClock : BOOLEAN;
  signal RESET : Std_logic;
  signal ENABLE : Std_logic;

  signal RegisterNS_Read_Register_1_address : T_SYSTEM_UINT32;
  signal RegisterNS_Read_Register_2_address : T_SYSTEM_UINT32;
  signal RegisterNS_Write_Register_address : T_SYSTEM_UINT32;
  signal RegisterNS_Write_Data_Data : T_SYSTEM_INT32;
  signal RegisterNS_Write_Control_Enable : T_SYSTEM_BOOL;
  signal RegisterNS_Read_Output_1_Data : T_SYSTEM_INT32;
  signal RegisterNS_Read_Output_2_Data : T_SYSTEM_INT32;

begin

  uut: entity work.vhdl_Register
  port map (

    RegisterNS_Read_Register_1_address => RegisterNS_Read_Register_1_address,
    RegisterNS_Read_Register_2_address => RegisterNS_Read_Register_2_address,
    RegisterNS_Write_Register_address => RegisterNS_Write_Register_address,
    RegisterNS_Write_Data_Data => RegisterNS_Write_Data_Data,
    RegisterNS_Write_Control_Enable => RegisterNS_Write_Control_Enable,
    RegisterNS_Read_Output_1_Data => RegisterNS_Read_Output_1_Data,
    RegisterNS_Read_Output_2_Data => RegisterNS_Read_Output_2_Data,

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
        assert are_strings_equal(tmp, "RegisterNS.Read_Register_1.address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RegisterNS.Read_Register_1.address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "RegisterNS.Read_Register_2.address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RegisterNS.Read_Register_2.address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "RegisterNS.Write_Control.Enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RegisterNS.Write_Control.Enable" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "RegisterNS.Write_Data.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RegisterNS.Write_Data.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "RegisterNS.Write_Register.address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RegisterNS.Write_Register.address" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "RegisterNS.Read_Output_1.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RegisterNS.Read_Output_1.Data" severity Failure;
        fieldno := fieldno + 1;
        read_csv_field(L, tmp);
        assert are_strings_equal(tmp, "RegisterNS.Read_Output_2.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected RegisterNS.Read_Output_2.Data" severity Failure;
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
                RegisterNS_Read_Register_1_address <= (others => 'U');
            else
                RegisterNS_Read_Register_1_address <= unsigned(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                RegisterNS_Read_Register_2_address <= (others => 'U');
            else
                RegisterNS_Read_Register_2_address <= unsigned(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                RegisterNS_Write_Control_Enable <= 'U';
            else
                RegisterNS_Write_Control_Enable <= to_std_logic(truncate(tmp));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                RegisterNS_Write_Data_Data <= (others => 'U');
            else
                RegisterNS_Write_Data_Data <= signed(to_std_logic_vector(truncate(tmp)));
            end if;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            if are_strings_equal(tmp, "U") then
                RegisterNS_Write_Register_address <= (others => 'U');
            else
                RegisterNS_Write_Register_address <= unsigned(to_std_logic_vector(truncate(tmp)));
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
            	if not are_strings_equal(str(RegisterNS_Read_Output_1_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for RegisterNS_Read_Output_1_Data in cycle " & integer'image(clockcycle) & " was: " & str(RegisterNS_Read_Output_1_Data) & " but should have been: " & truncate(tmp) severity Error;
                end if;
            end if;
            fieldno := fieldno + 1;

	        read_csv_field(L, tmp);
	        if not are_strings_equal(tmp, "U") then
            	if not are_strings_equal(str(RegisterNS_Read_Output_2_Data), tmp) then
                    newfailures := newfailures + 1;
                    report "Value for RegisterNS_Read_Output_2_Data in cycle " & integer'image(clockcycle) & " was: " & str(RegisterNS_Read_Output_2_Data) & " but should have been: " & truncate(tmp) severity Error;
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
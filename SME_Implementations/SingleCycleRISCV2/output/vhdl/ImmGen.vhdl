library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;

-- library CUSTOM_TYPES;
use work.CUSTOM_TYPES.ALL;


-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END


entity ImmGen is
    generic(
        reset_temp0: in T_SYSTEM_INT64;
        reset_temp1: in T_SYSTEM_UINT32;
        reset_temp2: in T_SYSTEM_UINT32;
        reset_temp3: in T_SYSTEM_UINT32;
        reset_temp4: in T_SYSTEM_UINT32
    );
    port(
        -- Input bus m_instruction signals
        m_instruction_Current: in T_SYSTEM_UINT32;

        -- Output bus output signals
        output_Immediate: out T_SYSTEM_INT64;


        -- Clock signal
        CLK : in Std_logic;

        -- Ready signal
        RDY : in Std_logic;

        -- Finished signal
        FIN : out Std_logic;

        -- Enable signal
        ENB : in Std_logic;

        -- Reset signal
        RST : in Std_logic
    );
end ImmGen;

architecture RTL of ImmGen is




      -- User defined signals, procedures and components here
      -- #### USER-DATA-SIGNALS-START
      -- #### USER-DATA-SIGNALS-END

begin

    -- Custom processes go here
    -- #### USER-DATA-PROCESSES-START
    -- #### USER-DATA-PROCESSES-END




    process(
        -- Custom sensitivity signals here
        -- #### USER-DATA-SENSITIVITY-START
        -- #### USER-DATA-SENSITIVITY-END
        RDY,
        RST
    )
    -- Internal variables
    variable num : T_SYSTEM_UINT32;
    variable num2 : T_SYSTEM_UINT32;
    variable num4 : T_SYSTEM_INT16;
    variable num3 : T_SYSTEM_INT16;
    variable local_var_0 : INTEGER;
    variable local_var_1 : INTEGER;
    variable local_var_2 : INTEGER;
    variable temp0 : T_SYSTEM_INT64 := reset_temp0;
    variable temp1 : T_SYSTEM_UINT32 := reset_temp1;
    variable temp2 : T_SYSTEM_UINT32 := reset_temp2;
    variable temp3 : T_SYSTEM_UINT32 := reset_temp3;
    variable temp4 : T_SYSTEM_UINT32 := reset_temp4;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_Immediate <= TO_SIGNED(0, 64);
            num := TO_UNSIGNED(0, 32);
            num2 := TO_UNSIGNED(0, 32);
            num4 := TO_SIGNED(0, 16);
            num3 := TO_SIGNED(0, 16);
            local_var_0 := 0;
            local_var_1 := 0;
            local_var_2 := 0;
            temp0 := reset_temp0;
            temp1 := reset_temp1;
            temp2 := reset_temp2;
            temp3 := reset_temp3;
            temp4 := reset_temp4;

                                    
            reentry_guard := '0';
            FIN <= '0';

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDRESETCODE-START
            -- #### USER-DATA-NONCLOCKEDRESETCODE-END

        elsif reentry_guard /= RDY then
            reentry_guard := RDY;

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-START
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-END


            num := m_instruction_Current and TO_UNSIGNED(127, 32);
            num2 := (shift_right(m_instruction_Current, 12)) and TO_UNSIGNED(7, 32);
            local_var_2 := TO_INTEGER(num);
            case local_var_2 is
                when 0 =>
                    output_Immediate <= TO_SIGNED(0, 64);
                when 51 =>
                    output_Immediate <= TO_SIGNED(0, 64);
                when 59 =>
                    output_Immediate <= TO_SIGNED(0, 64);
                when 19 =>
                    local_var_0 := TO_INTEGER(num2);
                    case local_var_0 is
                        when 1 =>
                            temp1 := (shift_right(m_instruction_Current, 20)) and TO_UNSIGNED(63, 32);
                            temp0 := SIGNED(resize(temp1, T_SYSTEM_INT64'length));
                            output_Immediate <= temp0;
                        when 5 =>
                            temp1 := (shift_right(m_instruction_Current, 20)) and TO_UNSIGNED(63, 32);
                            temp0 := SIGNED(resize(temp1, T_SYSTEM_INT64'length));
                            output_Immediate <= temp0;
                        when others =>
                            temp1 := (shift_right(m_instruction_Current, 20)) and TO_UNSIGNED(4095, 32);
                            num4 := resize((shift_right(SIGNED(resize(UNSIGNED(SIGNED(resize((shift_left(temp1, 4)), T_SYSTEM_INT16'length))), 32)), 4)), T_SYSTEM_INT16'length);
                            temp0 := resize(num4, T_SYSTEM_INT64'length);
                            output_Immediate <= temp0;
                    end case;
                when 27 =>
                    local_var_1 := TO_INTEGER(num2);
                    case local_var_1 is
                        when 1 =>
                            temp1 := (shift_right(m_instruction_Current, 20)) and TO_UNSIGNED(31, 32);
                            temp2 := (shift_right(m_instruction_Current, 25)) and TO_UNSIGNED(127, 32);
                            if temp2 /= TO_UNSIGNED(0, 32) then
                            end if;
                            temp0 := SIGNED(resize(temp1, T_SYSTEM_INT64'length));
                            output_Immediate <= temp0;
                        when 5 =>
                            temp1 := (shift_right(m_instruction_Current, 20)) and TO_UNSIGNED(31, 32);
                            temp2 := (shift_right(m_instruction_Current, 25)) and TO_UNSIGNED(127, 32);
                            if temp2 /= TO_UNSIGNED(0, 32) then
                            end if;
                            temp0 := SIGNED(resize(temp1, T_SYSTEM_INT64'length));
                            output_Immediate <= temp0;
                        when others =>
                            temp1 := (shift_right(m_instruction_Current, 20)) and TO_UNSIGNED(4095, 32);
                            num3 := resize((shift_right(SIGNED(resize(UNSIGNED(SIGNED(resize((shift_left(temp1, 4)), T_SYSTEM_INT16'length))), 32)), 4)), T_SYSTEM_INT16'length);
                            temp0 := resize(num3, T_SYSTEM_INT64'length);
                            output_Immediate <= temp0;
                    end case;
                when 3 =>
                    temp1 := (shift_right(m_instruction_Current, 20)) and TO_UNSIGNED(4095, 32);
                    temp0 := SIGNED(resize(temp1, T_SYSTEM_INT64'length));
                    temp0 := shift_right((shift_left(temp0, 52)), 52);
                    output_Immediate <= temp0;
                when 103 =>
                    temp1 := (shift_right(m_instruction_Current, 20)) and TO_UNSIGNED(4095, 32);
                    temp0 := SIGNED(resize(temp1, T_SYSTEM_INT64'length));
                    temp0 := shift_right((shift_left(temp0, 52)), 52);
                    output_Immediate <= temp0;
                when 35 =>
                    temp1 := (shift_right(m_instruction_Current, 7)) and TO_UNSIGNED(31, 32);
                    temp2 := (shift_right(m_instruction_Current, 25)) and TO_UNSIGNED(127, 32);
                    temp0 := SIGNED(((shift_left(resize(temp2, T_SYSTEM_UINT64'length), 5)) or resize(temp1, T_SYSTEM_UINT64'length)));
                    temp0 := shift_right((shift_left(temp0, 52)), 52);
                    output_Immediate <= temp0;
                when 99 =>
                    temp1 := (shift_right(m_instruction_Current, 8)) and TO_UNSIGNED(15, 32);
                    temp2 := (shift_right(m_instruction_Current, 25)) and TO_UNSIGNED(63, 32);
                    temp3 := (shift_right(m_instruction_Current, 7)) and TO_UNSIGNED(1, 32);
                    temp4 := (shift_right(m_instruction_Current, 31)) and TO_UNSIGNED(1, 32);
                    temp0 := SIGNED(((((shift_left(resize(temp4, T_SYSTEM_UINT64'length), 12)) or (shift_left(resize(temp3, T_SYSTEM_UINT64'length), 11))) or (shift_left(resize(temp2, T_SYSTEM_UINT64'length), 5))) or (shift_left(resize(temp1, T_SYSTEM_UINT64'length), 1))));
                    temp0 := shift_right((shift_left(temp0, 51)), 51);
                    output_Immediate <= temp0;
                when 23 =>
                    temp1 := (shift_right(m_instruction_Current, 12)) and TO_UNSIGNED(1048575, 32);
                    temp0 := SIGNED((shift_left(resize(temp1, T_SYSTEM_UINT64'length), 12)));
                    output_Immediate <= temp0;
                when 55 =>
                    temp1 := (shift_right(m_instruction_Current, 12)) and TO_UNSIGNED(1048575, 32);
                    temp0 := SIGNED((shift_left(resize(temp1, T_SYSTEM_UINT64'length), 12)));
                    output_Immediate <= temp0;
                when 111 =>
                    temp1 := (shift_right(m_instruction_Current, 21)) and TO_UNSIGNED(1023, 32);
                    temp2 := (shift_right(m_instruction_Current, 20)) and TO_UNSIGNED(1, 32);
                    temp3 := (shift_right(m_instruction_Current, 12)) and TO_UNSIGNED(255, 32);
                    temp4 := (shift_right(m_instruction_Current, 31)) and TO_UNSIGNED(1, 32);
                    temp0 := SIGNED(((((shift_left(resize(temp4, T_SYSTEM_UINT64'length), 20)) or (shift_left(resize(temp3, T_SYSTEM_UINT64'length), 12))) or (shift_left(resize(temp2, T_SYSTEM_UINT64'length), 11))) or (shift_left(resize(temp1, T_SYSTEM_UINT64'length), 1))));
                    output_Immediate <= temp0;
                when others =>
            end case;



            FIN <= RDY;

        end if;

        -- Non-clocked process actions here

        -- #### USER-DATA-CODE-START
        -- #### USER-DATA-CODE-END

    end process;


end RTL;

-- User defined architectures here
-- #### USER-DATA-ARCH-START
-- #### USER-DATA-ARCH-END

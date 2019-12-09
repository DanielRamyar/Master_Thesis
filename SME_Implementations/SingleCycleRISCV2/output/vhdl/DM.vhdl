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


entity DM is
    generic(
        reset_Data_Memory: in DM_Data_Memory_type
    );
    port(
        -- Input bus m_Address signals
        m_Address_Value: in T_SYSTEM_INT64;
        -- Input bus m_Data_input signals
        m_Data_input_Data: in T_SYSTEM_INT64;
        -- Input bus m_MemRead signals
        m_MemRead_Enable: in T_SYSTEM_BOOL;
        -- Input bus m_MemWrite signals
        m_MemWrite_Enable: in T_SYSTEM_BOOL;
        -- Input bus m_SizeAndSign signals
        m_SizeAndSign_Value: in T_SYSTEM_UINT8;

        -- Output bus output signals
        output_Data: out T_SYSTEM_INT64;


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
end DM;

architecture RTL of DM is




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
    variable data : T_SYSTEM_INT64;
    variable num : T_SYSTEM_INT32;
    variable num2 : T_SYSTEM_INT32;
    variable i : INTEGER;
    variable local_var_0 : INTEGER;
    variable local_var_1 : INTEGER;
    variable Data_Memory : DM_Data_Memory_type := reset_Data_Memory;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_Data <= TO_SIGNED(0, 64);
            data := TO_SIGNED(0, 64);
            num := TO_SIGNED(0, 32);
            num2 := TO_SIGNED(0, 32);
            i := 0;
            local_var_0 := 0;
            local_var_1 := 0;
            Data_Memory := reset_Data_Memory;

                                    
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


            if m_MemRead_Enable = '1' then
                data := TO_SIGNED(0, 64);
                num := TO_SIGNED(0, 32);
                num2 := TO_SIGNED(0, 32);
                local_var_0 := TO_INTEGER(m_SizeAndSign_Value);
                case local_var_0 is
                    when 0 =>
                        num := ((SIGNED(resize(Data_Memory(TO_INTEGER(m_Address_Value)), T_SYSTEM_INT32'length)) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(1, 64)))), 32)), 8))) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(2, 64)))), 32)), 16))) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(3, 64)))), 32)), 24));
                        num2 := ((SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(4, 64)))), T_SYSTEM_INT32'length)) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(5, 64)))), 32)), 8))) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(6, 64)))), 32)), 16))) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(7, 64)))), 32)), 24));
                        data := resize(num, T_SYSTEM_INT64'length) or (shift_left(resize(num2, T_SYSTEM_INT64'length), 32));
                    when 1 =>
                        data := resize((((SIGNED(resize(Data_Memory(TO_INTEGER(m_Address_Value)), T_SYSTEM_INT32'length)) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(1, 64)))), 32)), 8))) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(2, 64)))), 32)), 16))) or (shift_left(SIGNED(resize(UNSIGNED(SIGNED(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(3, 64)))))), 32)), 24))), T_SYSTEM_INT64'length);
                    when 2 =>
                        data := resize((SIGNED(resize(Data_Memory(TO_INTEGER(m_Address_Value)), T_SYSTEM_INT32'length)) or (shift_left(SIGNED(resize(UNSIGNED(SIGNED(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(1, 64)))))), 32)), 8))), T_SYSTEM_INT64'length);
                    when 3 =>
                        data := resize(SIGNED(Data_Memory(TO_INTEGER(m_Address_Value))), T_SYSTEM_INT64'length);
                    when 4 =>
                        data := SIGNED(resize(Data_Memory(TO_INTEGER(m_Address_Value)), T_SYSTEM_INT64'length));
                    when 5 =>
                        data := resize((SIGNED(resize(Data_Memory(TO_INTEGER(m_Address_Value)), T_SYSTEM_INT32'length)) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(1, 64)))), 32)), 8))), T_SYSTEM_INT64'length);
                    when 6 =>
                        data := SIGNED(resize(UNSIGNED((((SIGNED(resize(Data_Memory(TO_INTEGER(m_Address_Value)), T_SYSTEM_INT32'length)) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(1, 64)))), 32)), 8))) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(2, 64)))), 32)), 16))) or (shift_left(SIGNED(resize(Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(3, 64)))), 32)), 24)))), T_SYSTEM_INT64'length));
                    when others =>
                end case;
                output_Data <= data;
            else
                if m_MemWrite_Enable = '1' then
                    local_var_1 := TO_INTEGER(m_SizeAndSign_Value);
                    case local_var_1 is
                        when 0 =>
                            Data_Memory(TO_INTEGER(m_Address_Value)) := resize(UNSIGNED((m_Data_input_Data and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(1, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 8)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(2, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 16)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(3, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 24)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(4, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 32)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(5, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 40)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(6, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 48)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(7, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 56)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                        when 1 =>
                            Data_Memory(TO_INTEGER(m_Address_Value)) := resize(UNSIGNED((m_Data_input_Data and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(1, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 8)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(2, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 16)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(3, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 24)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                        when 2 =>
                            Data_Memory(TO_INTEGER(m_Address_Value)) := resize(UNSIGNED((m_Data_input_Data and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                            Data_Memory(TO_INTEGER((m_Address_Value + TO_SIGNED(1, 64)))) := resize(UNSIGNED(((shift_right(m_Data_input_Data, 8)) and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                        when 3 =>
                            Data_Memory(TO_INTEGER(m_Address_Value)) := resize(UNSIGNED((m_Data_input_Data and TO_SIGNED(255, 64))), T_SYSTEM_UINT8'length);
                        when others =>
                    end case;
                else
                    output_Data <= TO_SIGNED(0, 64);
                end if;
            end if;
            for i in 0 to 1999 loop
                if i = 0 then
                else
                    if TO_SIGNED(i, 32) = (TO_SIGNED(DM_Data_Memory_type'LENGTH, 32) - TO_SIGNED(1, 32)) then
                    else
                        if ((TO_SIGNED(i, 32) + TO_SIGNED(1, 32)) mod TO_SIGNED(8, 32)) = TO_SIGNED(0, 32) then
                        else
                            if ((TO_SIGNED(i, 32) + TO_SIGNED(1, 32)) mod TO_SIGNED(8, 32)) = TO_SIGNED(1, 32) then
                            else
                            end if;
                        end if;
                    end if;
                end if;
            end loop;



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

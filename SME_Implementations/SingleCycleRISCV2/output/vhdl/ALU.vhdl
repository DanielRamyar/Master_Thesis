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


entity ALU is
    port(
        -- Input bus m_ALUOP signals
        m_ALUOP_Value: in T_SYSTEM_UINT8;
        -- Input bus m_ALU_In_1 signals
        m_ALU_In_1_Data: in T_SYSTEM_INT64;
        -- Input bus m_ALU_In_2 signals
        m_ALU_In_2_Data: in T_SYSTEM_INT64;

        -- Output bus output signals
        output_Value: out T_SYSTEM_INT64;


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
end ALU;

architecture RTL of ALU is




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
    variable local_var_0 : T_SYSTEM_INT32;
    variable local_var_1 : T_SYSTEM_INT32;
    variable local_var_2 : INTEGER;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_Value <= TO_SIGNED(0, 64);
            local_var_0 := TO_SIGNED(0, 32);
            local_var_1 := TO_SIGNED(0, 32);
            local_var_2 := 0;

                                    
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


            local_var_2 := TO_INTEGER(m_ALUOP_Value);
            case local_var_2 is
                when 0 =>
                    output_Value <= m_ALU_In_1_Data + m_ALU_In_2_Data;
                when 1 =>
                    output_Value <= m_ALU_In_1_Data - m_ALU_In_2_Data;
                when 2 =>
                    output_Value <= m_ALU_In_1_Data and m_ALU_In_2_Data;
                when 3 =>
                    output_Value <= m_ALU_In_1_Data or m_ALU_In_2_Data;
                when 4 =>
                    output_Value <= m_ALU_In_1_Data xor m_ALU_In_2_Data;
                when 5 =>
                    output_Value <= shift_left(m_ALU_In_1_Data, TO_INTEGER(m_ALU_In_2_Data));
                when 6 =>
                    if m_ALU_In_1_Data < m_ALU_In_2_Data then
                        local_var_0 := TO_SIGNED(1, 32);
                    else
                        local_var_0 := TO_SIGNED(0, 32);
                    end if;
                    output_Value <= resize((local_var_0), T_SYSTEM_INT64'length);
                when 7 =>
                    if UNSIGNED(m_ALU_In_1_Data) < UNSIGNED(m_ALU_In_2_Data) then
                        local_var_1 := TO_SIGNED(1, 32);
                    else
                        local_var_1 := TO_SIGNED(0, 32);
                    end if;
                    output_Value <= resize((local_var_1), T_SYSTEM_INT64'length);
                when 8 =>
                    output_Value <= SIGNED((shift_right(UNSIGNED(m_ALU_In_1_Data), TO_INTEGER(m_ALU_In_2_Data))));
                when 9 =>
                    output_Value <= shift_right(m_ALU_In_1_Data, TO_INTEGER(m_ALU_In_2_Data));
                when 10 =>
                    output_Value <= resize(resize(m_ALU_In_1_Data, T_SYSTEM_INT32'length) + resize(m_ALU_In_2_Data, T_SYSTEM_INT32'length), T_SYSTEM_INT64'length);
                when 11 =>
                    output_Value <= resize(resize(m_ALU_In_1_Data, T_SYSTEM_INT32'length) - resize(m_ALU_In_2_Data, T_SYSTEM_INT32'length), T_SYSTEM_INT64'length);
                when 12 =>
                    output_Value <= resize(shift_left(resize(m_ALU_In_1_Data, T_SYSTEM_INT32'length), TO_INTEGER(m_ALU_In_2_Data)), T_SYSTEM_INT64'length);
                when 13 =>
                    output_Value <= SIGNED(resize(shift_right(resize(UNSIGNED(m_ALU_In_1_Data), T_SYSTEM_UINT32'length), TO_INTEGER(m_ALU_In_2_Data)), T_SYSTEM_INT64'length));
                when 14 =>
                    output_Value <= resize(shift_right(resize(m_ALU_In_1_Data, T_SYSTEM_INT32'length), TO_INTEGER(m_ALU_In_2_Data)), T_SYSTEM_INT64'length);
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

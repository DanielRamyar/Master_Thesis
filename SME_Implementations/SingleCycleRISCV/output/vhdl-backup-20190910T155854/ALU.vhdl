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
        -- Input bus m_OperationCode signals
        m_OperationCode_Value: in T_SYSTEM_UINT8;
        -- Input bus m_ALU_In_1 signals
        m_ALU_In_1_Data: in T_SYSTEM_INT32;
        -- Input bus m_ALU_In_2 signals
        m_ALU_In_2_Data: in T_SYSTEM_INT32;

        -- Output bus output signals
        output_Value: out T_SYSTEM_INT32;
        -- Output bus zero_out signals
        zero_out_Value: out T_SYSTEM_BOOL;


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
    variable num : T_SYSTEM_INT32;
    variable num2 : T_SYSTEM_INT32;
    variable num3 : T_SYSTEM_INT32;
    variable num4 : T_SYSTEM_INT32;
    variable local_var_0 : INTEGER;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_Value <= TO_SIGNED(0, 32);
            zero_out_Value <= '0';
            num := TO_SIGNED(0, 32);
            num2 := TO_SIGNED(0, 32);
            num3 := TO_SIGNED(0, 32);
            num4 := TO_SIGNED(0, 32);
            local_var_0 := 0;

                                    
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


            local_var_0 := TO_INTEGER(m_OperationCode_Value);
            case local_var_0 is
                when 0 =>
                    num := m_ALU_In_1_Data and m_ALU_In_2_Data;
                    output_Value <= num;
                    if num = TO_SIGNED(0, 32) then
                        zero_out_Value <= '1';
                    else
                        zero_out_Value <= '0';
                    end if;
                when 1 =>
                    num2 := m_ALU_In_1_Data or m_ALU_In_2_Data;
                    output_Value <= num2;
                    if num2 = TO_SIGNED(0, 32) then
                        zero_out_Value <= '1';
                    else
                        zero_out_Value <= '0';
                    end if;
                when 2 =>
                    num3 := m_ALU_In_1_Data + m_ALU_In_2_Data;
                    output_Value <= num3;
                    if num3 = TO_SIGNED(0, 32) then
                        zero_out_Value <= '1';
                    else
                        zero_out_Value <= '0';
                    end if;
                when 3 =>
                    num4 := m_ALU_In_1_Data - m_ALU_In_2_Data;
                    output_Value <= num4;
                    if num4 = TO_SIGNED(0, 32) then
                        zero_out_Value <= '1';
                    else
                        zero_out_Value <= '0';
                    end if;
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

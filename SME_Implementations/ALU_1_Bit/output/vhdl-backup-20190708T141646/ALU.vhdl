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
        -- Input bus m_A signals
        m_A_Value: in T_SYSTEM_UINT32;
        -- Input bus m_B signals
        m_B_Value: in T_SYSTEM_UINT32;

        -- Output bus output signals
        output_Value: out T_SYSTEM_UINT32;
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
    variable value : T_SYSTEM_UINT32;
    variable value2 : T_SYSTEM_UINT32;
    variable value3 : T_SYSTEM_UINT32;
    variable value4 : T_SYSTEM_UINT32;
    variable local_var_0 : INTEGER;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_Value <= TO_UNSIGNED(0, 32);
            zero_out_Value <= '0';
            value := TO_UNSIGNED(0, 32);
            value2 := TO_UNSIGNED(0, 32);
            value3 := TO_UNSIGNED(0, 32);
            value4 := TO_UNSIGNED(0, 32);
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
                    value := m_A_Value and m_B_Value;
                    output_Value <= value;
                    if value = TO_UNSIGNED(0, 32) then
                        zero_out_Value <= '1';
                    else
                        zero_out_Value <= '0';
                    end if;
                when 1 =>
                    value2 := m_A_Value or m_B_Value;
                    output_Value <= value2;
                    if output_Value = TO_UNSIGNED(0, 32) then
                        zero_out_Value <= '1';
                    else
                        zero_out_Value <= '0';
                    end if;
                when 2 =>
                    value3 := m_A_Value + m_B_Value;
                    output_Value <= value3;
                    if output_Value = TO_UNSIGNED(0, 32) then
                        zero_out_Value <= '1';
                    else
                        zero_out_Value <= '0';
                    end if;
                when 3 =>
                    value4 := m_A_Value - m_B_Value;
                    output_Value <= value4;
                    if output_Value = TO_UNSIGNED(0, 32) then
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

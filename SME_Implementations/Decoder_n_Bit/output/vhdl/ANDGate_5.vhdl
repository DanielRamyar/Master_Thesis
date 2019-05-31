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


entity ANDGate_5 is
    port(
        -- Input bus m_input_0 signals
        m_input_0_Value: in T_SYSTEM_BOOL;
        -- Input bus m_input_NOT_1 signals
        m_input_NOT_1_Value: in T_SYSTEM_BOOL;
        -- Input bus m_input_2 signals
        m_input_2_Value: in T_SYSTEM_BOOL;
        -- Input bus m_input_NOT_3 signals
        m_input_NOT_3_Value: in T_SYSTEM_BOOL;
        -- Input bus m_input_NOT_4 signals
        m_input_NOT_4_Value: in T_SYSTEM_BOOL;
        -- Input bus m_input_NOT_5 signals
        m_input_NOT_5_Value: in T_SYSTEM_BOOL;
        -- Input bus m_input_NOT_6 signals
        m_input_NOT_6_Value: in T_SYSTEM_BOOL;
        -- Input bus m_input_NOT_7 signals
        m_input_NOT_7_Value: in T_SYSTEM_BOOL;

        -- Output bus output_5 signals
        output_5_Value: out T_SYSTEM_BOOL;


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
end ANDGate_5;

architecture RTL of ANDGate_5 is




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

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_5_Value <= '0';

                                    
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


            if (((((((m_input_0_Value = '1') and (m_input_NOT_1_Value = '1')) and (m_input_2_Value = '1')) and (m_input_NOT_3_Value = '1')) and (m_input_NOT_4_Value = '1')) and (m_input_NOT_5_Value = '1')) and (m_input_NOT_6_Value = '1')) and (m_input_NOT_7_Value = '1') then
                output_5_Value <= '1';
            else
                output_5_Value <= '0';
            end if;



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

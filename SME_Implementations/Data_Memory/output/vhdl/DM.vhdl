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
        -- Input bus m_input signals
        m_input_Address: in T_SYSTEM_UINT32;
        -- Input bus m_Data_input signals
        m_Data_input_Data: in T_SYSTEM_INT32;
        -- Input bus m_MemRead signals
        m_MemRead_Enable: in T_SYSTEM_BOOL;
        -- Input bus m_MemWrite signals
        m_MemWrite_Enable: in T_SYSTEM_BOOL;

        -- Output bus output signals
        output_Data: out T_SYSTEM_INT32;


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
    variable Data_Memory : DM_Data_Memory_type := reset_Data_Memory;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_Data <= TO_SIGNED(0, 32);
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
                output_Data <= Data_Memory(TO_INTEGER(m_input_Address));
            else
                if m_MemWrite_Enable = '1' then
                    Data_Memory(TO_INTEGER(m_input_Address)) := m_Data_input_Data;
                end if;
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

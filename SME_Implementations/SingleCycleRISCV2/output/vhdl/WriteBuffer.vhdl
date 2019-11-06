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


entity WriteBuffer is
    generic(
        reset_WB_Data_Hold: in T_SYSTEM_INT64;
        reset_WB_RegisterWrite_Hold: in T_SYSTEM_UINT32;
        reset_WB_WriteControl_Hold: in T_SYSTEM_BOOL
    );
    port(
        -- Input bus m_write_data signals
        m_write_data_Data: in T_SYSTEM_INT64;
        -- Input bus m_write_register signals
        m_write_register_Address: in T_SYSTEM_UINT32;
        -- Input bus m_write_control signals
        m_write_control_Enable: in T_SYSTEM_BOOL;

        -- Output bus m_WB_Data signals
        m_WB_Data_Data: out T_SYSTEM_INT64;
        -- Output bus m_WB_WriteRegister signals
        m_WB_WriteRegister_Address: out T_SYSTEM_UINT32;
        -- Output bus m_WB_WriteControl signals
        m_WB_WriteControl_Enable: out T_SYSTEM_BOOL;


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
end WriteBuffer;

architecture RTL of WriteBuffer is




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
        CLK,
        RST
    )
    -- Internal variables
    variable WB_Data_Hold : T_SYSTEM_INT64 := reset_WB_Data_Hold;
    variable WB_RegisterWrite_Hold : T_SYSTEM_UINT32 := reset_WB_RegisterWrite_Hold;
    variable WB_WriteControl_Hold : T_SYSTEM_BOOL := reset_WB_WriteControl_Hold;


    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            m_WB_Data_Data <= TO_SIGNED(0, 64);
            m_WB_WriteRegister_Address <= TO_UNSIGNED(0, 32);
            m_WB_WriteControl_Enable <= '0';
            WB_Data_Hold := reset_WB_Data_Hold;
            WB_RegisterWrite_Hold := reset_WB_RegisterWrite_Hold;
            WB_WriteControl_Hold := reset_WB_WriteControl_Hold;

                                    
            FIN <= '0';

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDRESETCODE-START
            -- #### USER-DATA-NONCLOCKEDRESETCODE-END

        elsif rising_edge(CLK) then

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-START
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-END


            WB_Data_Hold := m_write_data_Data;
            WB_RegisterWrite_Hold := m_write_register_Address;
            WB_WriteControl_Hold := m_write_control_Enable;
            m_WB_Data_Data <= WB_Data_Hold;
            m_WB_WriteRegister_Address <= WB_RegisterWrite_Hold;
            m_WB_WriteControl_Enable <= WB_WriteControl_Hold;



            FIN <= CLK;

        end if;

        -- Non-clocked process actions here

        -- #### USER-DATA-CODE-START
        -- #### USER-DATA-CODE-END

    end process;


end RTL;

-- User defined architectures here
-- #### USER-DATA-ARCH-START
-- #### USER-DATA-ARCH-END

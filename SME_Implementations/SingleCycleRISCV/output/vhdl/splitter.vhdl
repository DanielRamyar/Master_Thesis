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


entity splitter is
    port(
        -- Input bus m_input signals
        m_input_Instruction: in T_SYSTEM_UINT32;

        -- Output bus m_read_1 signals
        m_read_1_address: out T_SYSTEM_UINT32;
        -- Output bus m_read_2 signals
        m_read_2_address: out T_SYSTEM_UINT32;
        -- Output bus m_write signals
        m_write_address: out T_SYSTEM_UINT32;
        -- Output bus m_write_data signals
        m_write_data_Data: out T_SYSTEM_INT32;
        -- Output bus m_write_control signals
        m_write_control_Enable: out T_SYSTEM_BOOL;


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
end splitter;

architecture RTL of splitter is




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
    variable instruction : T_SYSTEM_UINT32;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            m_read_1_address <= TO_UNSIGNED(0, 32);
            m_read_2_address <= TO_UNSIGNED(0, 32);
            m_write_address <= TO_UNSIGNED(0, 32);
            m_write_data_Data <= TO_SIGNED(0, 32);
            m_write_control_Enable <= '0';
            instruction := TO_UNSIGNED(0, 32);

                                    
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


            instruction := m_input_Instruction;
            m_read_1_address <= (shift_right(instruction, 15)) and TO_UNSIGNED(31, 32);
            m_read_2_address <= (shift_right(instruction, 20)) and TO_UNSIGNED(31, 32);
            m_write_address <= (shift_right(instruction, 7)) and TO_UNSIGNED(31, 32);
            m_write_data_Data <= TO_SIGNED(44, 32);
            m_write_control_Enable <= '0';



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

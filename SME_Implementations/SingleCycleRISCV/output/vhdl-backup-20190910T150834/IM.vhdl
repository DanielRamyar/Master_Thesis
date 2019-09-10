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


entity IM is
    generic(
        reset_Instruction_Memory: in IM_Instruction_Memory_type
    );
    port(
        -- Input bus m_input signals
        m_input_Address: in T_SYSTEM_UINT32;

        -- Output bus m_read_1 signals
        m_read_1_address: out T_SYSTEM_UINT32;
        -- Output bus m_read_2 signals
        m_read_2_address: out T_SYSTEM_UINT32;
        -- Output bus m_write signals
        m_write_address: out T_SYSTEM_UINT32;
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
end IM;

architecture RTL of IM is




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
    variable address : T_SYSTEM_UINT32;
    variable num : T_SYSTEM_UINT32;
    variable Instruction_Memory : IM_Instruction_Memory_type := reset_Instruction_Memory;

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
            m_write_control_Enable <= '0';
            address := TO_UNSIGNED(0, 32);
            num := TO_UNSIGNED(0, 32);
            Instruction_Memory := reset_Instruction_Memory;

                                    
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


            address := m_input_Address;
            num := UNSIGNED(((((TO_SIGNED(0, 32) or (shift_left(SIGNED(resize(Instruction_Memory(TO_INTEGER(address)), 32)), 24))) or (shift_left(SIGNED(resize(Instruction_Memory(TO_INTEGER((address + TO_UNSIGNED(1, 32)))), 32)), 16))) or (shift_left(SIGNED(resize(Instruction_Memory(TO_INTEGER((address + TO_UNSIGNED(2, 32)))), 32)), 8))) or SIGNED(resize(Instruction_Memory(TO_INTEGER((address + TO_UNSIGNED(3, 32)))), T_SYSTEM_INT32'length))));
            m_read_1_address <= (shift_right(num, 15)) and TO_UNSIGNED(31, 32);
            m_read_2_address <= (shift_right(num, 20)) and TO_UNSIGNED(31, 32);
            m_write_address <= (shift_right(num, 7)) and TO_UNSIGNED(31, 32);
            m_write_control_Enable <= '1';



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

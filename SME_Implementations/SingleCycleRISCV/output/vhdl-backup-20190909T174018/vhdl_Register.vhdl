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


entity vhdl_Register is
    generic(
        reset_m_register: in vhdl_Register_m_register_type
    );
    port(
        -- Input bus m_read_1 signals
        m_read_1_address: in T_SYSTEM_UINT32;
        -- Input bus m_read_2 signals
        m_read_2_address: in T_SYSTEM_UINT32;
        -- Input bus Data_Output signals
        Data_Output_Data: in T_SYSTEM_INT32;
        -- Input bus Register_Output signals
        Register_Output_address: in T_SYSTEM_UINT32;
        -- Input bus Control_Output signals
        Control_Output_Enable: in T_SYSTEM_BOOL;

        -- Output bus output_1 signals
        output_1_Data: out T_SYSTEM_INT32;
        -- Output bus output_2 signals
        output_2_Data: out T_SYSTEM_INT32;
        -- Output bus m_OperationCode signals
        m_OperationCode_Value: out T_SYSTEM_UINT8;


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
end vhdl_Register;

architecture RTL of vhdl_Register is




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
    variable m_register : vhdl_Register_m_register_type := reset_m_register;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_1_Data <= TO_SIGNED(0, 32);
            output_2_Data <= TO_SIGNED(0, 32);
            m_OperationCode_Value <= TO_UNSIGNED(0, 8);
            m_register := reset_m_register;

                                    
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


            if ((Control_Output_Enable = '1') and (Register_Output_address /= TO_UNSIGNED(0, 32))) and (Register_Output_address <= TO_UNSIGNED(32, 32)) then
                m_register(TO_INTEGER(Register_Output_address)) := Data_Output_Data;
            end if;
            if (m_read_1_address >= TO_UNSIGNED(0, 32)) and (m_read_1_address <= TO_UNSIGNED(32, 32)) then
                output_1_Data <= m_register(TO_INTEGER(m_read_1_address));
            end if;
            if (m_read_2_address >= TO_UNSIGNED(0, 32)) and (m_read_2_address <= TO_UNSIGNED(32, 32)) then
                output_2_Data <= m_register(TO_INTEGER(m_read_2_address));
            end if;
            m_OperationCode_Value <= TO_UNSIGNED(2, 8);



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

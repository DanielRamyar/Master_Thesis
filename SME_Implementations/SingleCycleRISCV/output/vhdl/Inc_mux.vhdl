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


entity Inc_mux is
    port(
        -- Input bus m_input signals
        m_input_Address: in T_SYSTEM_UINT64;
        -- Input bus m_zero_out signals
        m_zero_out_Value: in T_SYSTEM_BOOL;
        -- Input bus m_Branch signals
        m_Branch_Enable: in T_SYSTEM_BOOL;
        -- Input bus m_BranchUnit_Output signals
        m_BranchUnit_Output_Address: in T_SYSTEM_UINT64;

        -- Output bus Mux_out signals
        Mux_out_Address: out T_SYSTEM_UINT64;


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
end Inc_mux;

architecture RTL of Inc_mux is




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
    variable local_var_0 : T_SYSTEM_BOOL;


    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            Mux_out_Address <= TO_UNSIGNED(0, 64);
            local_var_0 := '0';

                                    
            FIN <= '0';

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDRESETCODE-START
            -- #### USER-DATA-NONCLOCKEDRESETCODE-END

        elsif rising_edge(CLK) then

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-START
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-END


            if (m_zero_out_Value = '1') and (m_Branch_Enable = '1') then
                local_var_0 := '1';
            else
                local_var_0 := '0';
            end if;
            case local_var_0 is
                when '0' =>
                    Mux_out_Address <= m_input_Address;
                when '1' =>
                    Mux_out_Address <= m_BranchUnit_Output_Address;
                when others =>
            end case;



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

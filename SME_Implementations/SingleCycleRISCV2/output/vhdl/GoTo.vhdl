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


entity GoTo is
    port(
        -- Input bus m_RS1 signals
        m_RS1_Data: in T_SYSTEM_INT64;
        -- Input bus m_RS2 signals
        m_RS2_Data: in T_SYSTEM_INT64;
        -- Input bus m_BJSIGN signals
        m_BJSIGN_Value: in T_SYSTEM_UINT8;

        -- Output bus output signals
        output_Value: out T_SYSTEM_BOOL;


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
end GoTo;

architecture RTL of GoTo is




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
    variable local_var_2 : T_SYSTEM_INT32;
    variable local_var_3 : T_SYSTEM_INT32;
    variable local_var_4 : T_SYSTEM_INT32;
    variable local_var_5 : T_SYSTEM_INT32;
    variable local_var_6 : INTEGER;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_Value <= '0';
            local_var_0 := TO_SIGNED(0, 32);
            local_var_1 := TO_SIGNED(0, 32);
            local_var_2 := TO_SIGNED(0, 32);
            local_var_3 := TO_SIGNED(0, 32);
            local_var_4 := TO_SIGNED(0, 32);
            local_var_5 := TO_SIGNED(0, 32);
            local_var_6 := 0;

                                    
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


            local_var_6 := TO_INTEGER(m_BJSIGN_Value);
            case local_var_6 is
                when 0 =>
                    if m_RS1_Data = m_RS2_Data then
                        local_var_0 := TO_SIGNED(1, 32);
                    else
                        local_var_0 := TO_SIGNED(0, 32);
                    end if;
                    if resize(UNSIGNED((local_var_0)), T_SYSTEM_UINT8'length) /= TO_UNSIGNED(0, 8) then
                        output_Value <= '1';
                    else
                        output_Value <= '0';
                    end if;
                when 1 =>
                    if m_RS1_Data /= m_RS2_Data then
                        local_var_1 := TO_SIGNED(1, 32);
                    else
                        local_var_1 := TO_SIGNED(0, 32);
                    end if;
                    if resize(UNSIGNED((local_var_1)), T_SYSTEM_UINT8'length) /= TO_UNSIGNED(0, 8) then
                        output_Value <= '1';
                    else
                        output_Value <= '0';
                    end if;
                when 2 =>
                    if m_RS1_Data < m_RS2_Data then
                        local_var_2 := TO_SIGNED(1, 32);
                    else
                        local_var_2 := TO_SIGNED(0, 32);
                    end if;
                    if resize(UNSIGNED((local_var_2)), T_SYSTEM_UINT8'length) /= TO_UNSIGNED(0, 8) then
                        output_Value <= '1';
                    else
                        output_Value <= '0';
                    end if;
                when 3 =>
                    if m_RS1_Data >= m_RS2_Data then
                        local_var_3 := TO_SIGNED(1, 32);
                    else
                        local_var_3 := TO_SIGNED(0, 32);
                    end if;
                    if resize(UNSIGNED((local_var_3)), T_SYSTEM_UINT8'length) /= TO_UNSIGNED(0, 8) then
                        output_Value <= '1';
                    else
                        output_Value <= '0';
                    end if;
                when 4 =>
                    if UNSIGNED(m_RS1_Data) < UNSIGNED(m_RS2_Data) then
                        local_var_4 := TO_SIGNED(1, 32);
                    else
                        local_var_4 := TO_SIGNED(0, 32);
                    end if;
                    if resize(UNSIGNED((local_var_4)), T_SYSTEM_UINT8'length) /= TO_UNSIGNED(0, 8) then
                        output_Value <= '1';
                    else
                        output_Value <= '0';
                    end if;
                when 5 =>
                    if UNSIGNED(m_RS1_Data) >= UNSIGNED(m_RS2_Data) then
                        local_var_5 := TO_SIGNED(1, 32);
                    else
                        local_var_5 := TO_SIGNED(0, 32);
                    end if;
                    if resize(UNSIGNED((local_var_5)), T_SYSTEM_UINT8'length) /= TO_UNSIGNED(0, 8) then
                        output_Value <= '1';
                    else
                        output_Value <= '0';
                    end if;
                when 6 =>
                    output_Value <= '1';
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

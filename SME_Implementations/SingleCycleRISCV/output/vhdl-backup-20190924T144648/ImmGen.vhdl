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


entity ImmGen is
    generic(
        reset_temp0: in T_SYSTEM_INT64;
        reset_temp1: in T_SYSTEM_UINT32;
        reset_temp2: in T_SYSTEM_UINT32;
        reset_temp3: in T_SYSTEM_UINT32;
        reset_temp4: in T_SYSTEM_UINT32
    );
    port(
        -- Input bus m_instruction signals
        m_instruction_current: in T_SYSTEM_UINT32;

        -- Output bus output signals
        output_Immediate: out T_SYSTEM_INT64;


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
end ImmGen;

architecture RTL of ImmGen is




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
    variable num : T_SYSTEM_UINT32;
    variable temp0 : T_SYSTEM_INT64 := reset_temp0;
    variable temp1 : T_SYSTEM_UINT32 := reset_temp1;
    variable temp2 : T_SYSTEM_UINT32 := reset_temp2;
    variable temp3 : T_SYSTEM_UINT32 := reset_temp3;
    variable temp4 : T_SYSTEM_UINT32 := reset_temp4;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            output_Immediate <= TO_SIGNED(0, 64);
            num := TO_UNSIGNED(0, 32);
            temp0 := reset_temp0;
            temp1 := reset_temp1;
            temp2 := reset_temp2;
            temp3 := reset_temp3;
            temp4 := reset_temp4;

                                    
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


            num := m_instruction_current and TO_UNSIGNED(127, 32);
            if num = TO_UNSIGNED(99, 32) then
                temp1 := (shift_right(m_instruction_current, 8)) and TO_UNSIGNED(15, 32);
                temp2 := (shift_right(m_instruction_current, 25)) and TO_UNSIGNED(63, 32);
                temp3 := (shift_right(m_instruction_current, 7)) and TO_UNSIGNED(1, 32);
                temp4 := (shift_right(m_instruction_current, 31)) and TO_UNSIGNED(1, 32);
                temp0 := SIGNED(((((TO_UNSIGNED(0, 64) or (shift_left(resize(temp4, T_SYSTEM_UINT64'length), 11))) or (shift_left(resize(temp3, T_SYSTEM_UINT64'length), 10))) or (shift_left(resize(temp2, T_SYSTEM_UINT64'length), 4))) or resize(temp1, T_SYSTEM_UINT64'length)));
                output_Immediate <= temp0;
            end if;
            if num = TO_UNSIGNED(35, 32) then
                temp1 := (shift_right(m_instruction_current, 7)) and TO_UNSIGNED(31, 32);
                temp2 := (shift_right(m_instruction_current, 25)) and TO_UNSIGNED(127, 32);
                temp0 := SIGNED(((TO_UNSIGNED(0, 64) or (shift_left(resize(temp2, T_SYSTEM_UINT64'length), 5))) or resize(temp1, T_SYSTEM_UINT64'length)));
                output_Immediate <= temp0;
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

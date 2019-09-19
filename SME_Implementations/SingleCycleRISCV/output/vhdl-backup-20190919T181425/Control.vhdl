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


entity Control is
    generic(
        reset_Opcode: in T_SYSTEM_UINT32;
        reset_Op0: in T_SYSTEM_BOOL;
        reset_Op1: in T_SYSTEM_BOOL;
        reset_Op2: in T_SYSTEM_BOOL;
        reset_Op3: in T_SYSTEM_BOOL;
        reset_Op4: in T_SYSTEM_BOOL;
        reset_Op5: in T_SYSTEM_BOOL;
        reset_Op6: in T_SYSTEM_BOOL;
        reset_A: in T_SYSTEM_BOOL;
        reset_B: in T_SYSTEM_BOOL;
        reset_C: in T_SYSTEM_BOOL;
        reset_D: in T_SYSTEM_BOOL
    );
    port(
        -- Input bus m_input signals
        m_input_Opcode: in T_SYSTEM_UINT32;

        -- Output bus ALUSrc_out signals
        ALUSrc_out_Enable: out T_SYSTEM_BOOL;
        -- Output bus MemtoReg_out signals
        MemtoReg_out_Enable: out T_SYSTEM_BOOL;
        -- Output bus RegWrite_out signals
        RegWrite_out_Enable: out T_SYSTEM_BOOL;
        -- Output bus MemRead_out signals
        MemRead_out_Enable: out T_SYSTEM_BOOL;
        -- Output bus MemWrite_out signals
        MemWrite_out_Enable: out T_SYSTEM_BOOL;
        -- Output bus Branch_out signals
        Branch_out_Enable: out T_SYSTEM_BOOL;
        -- Output bus ALU1_out signals
        ALU1_out_Enable: out T_SYSTEM_BOOL;
        -- Output bus ALU0_out signals
        ALU0_out_Enable: out T_SYSTEM_BOOL;


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
end Control;

architecture RTL of Control is




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
    variable Opcode : T_SYSTEM_UINT32 := reset_Opcode;
    variable Op0 : T_SYSTEM_BOOL := reset_Op0;
    variable Op1 : T_SYSTEM_BOOL := reset_Op1;
    variable Op2 : T_SYSTEM_BOOL := reset_Op2;
    variable Op3 : T_SYSTEM_BOOL := reset_Op3;
    variable Op4 : T_SYSTEM_BOOL := reset_Op4;
    variable Op5 : T_SYSTEM_BOOL := reset_Op5;
    variable Op6 : T_SYSTEM_BOOL := reset_Op6;
    variable A : T_SYSTEM_BOOL := reset_A;
    variable B : T_SYSTEM_BOOL := reset_B;
    variable C : T_SYSTEM_BOOL := reset_C;
    variable D : T_SYSTEM_BOOL := reset_D;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            ALUSrc_out_Enable <= '0';
            MemtoReg_out_Enable <= '0';
            RegWrite_out_Enable <= '0';
            MemRead_out_Enable <= '0';
            MemWrite_out_Enable <= '0';
            Branch_out_Enable <= '0';
            ALU1_out_Enable <= '0';
            ALU0_out_Enable <= '0';
            Opcode := reset_Opcode;
            Op0 := reset_Op0;
            Op1 := reset_Op1;
            Op2 := reset_Op2;
            Op3 := reset_Op3;
            Op4 := reset_Op4;
            Op5 := reset_Op5;
            Op6 := reset_Op6;
            A := reset_A;
            B := reset_B;
            C := reset_C;
            D := reset_D;

                                    
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


            Opcode := m_input_Opcode;
            if (Opcode and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                Op0 := '1';
            else
                Op0 := '0';
            end if;
            if ((shift_right(Opcode, 1)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                Op1 := '1';
            else
                Op1 := '0';
            end if;
            if ((shift_right(Opcode, 2)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                Op2 := '1';
            else
                Op2 := '0';
            end if;
            if ((shift_right(Opcode, 3)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                Op3 := '1';
            else
                Op3 := '0';
            end if;
            if ((shift_right(Opcode, 4)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                Op4 := '1';
            else
                Op4 := '0';
            end if;
            if ((shift_right(Opcode, 5)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                Op5 := '1';
            else
                Op5 := '0';
            end if;
            if ((shift_right(Opcode, 6)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                Op6 := '1';
            else
                Op6 := '0';
            end if;
            if ((((((not (Op6 = '1')) and (Op5 = '1')) and (not (Op4 = '1'))) and (not (Op3 = '1'))) and (not (Op2 = '1'))) and (Op1 = '1')) and (Op0 = '1') then
                A := '1';
            else
                A := '0';
            end if;
            if ((((((not (Op6 = '1')) and (not (Op5 = '1'))) and (not (Op4 = '1'))) and (not (Op3 = '1'))) and (not (Op2 = '1'))) and (Op1 = '1')) and (Op0 = '1') then
                B := '1';
            else
                B := '0';
            end if;
            if ((((((not (Op6 = '1')) and (Op5 = '1')) and (Op4 = '1')) and (not (Op3 = '1'))) and (not (Op2 = '1'))) and (Op1 = '1')) and (Op0 = '1') then
                C := '1';
            else
                C := '0';
            end if;
            if ((((((Op6 = '1') and (Op5 = '1')) and (not (Op4 = '1'))) and (not (Op3 = '1'))) and (not (Op2 = '1'))) and (Op1 = '1')) and (Op0 = '1') then
                D := '1';
            else
                D := '0';
            end if;
            if (A = '1') or (B = '1') then
                ALUSrc_out_Enable <= '1';
            else
                ALUSrc_out_Enable <= '0';
            end if;
            MemtoReg_out_Enable <= B;
            if (B = '1') or (C = '1') then
                RegWrite_out_Enable <= '1';
            else
                RegWrite_out_Enable <= '0';
            end if;
            MemRead_out_Enable <= B;
            MemWrite_out_Enable <= A;
            Branch_out_Enable <= D;
            ALU1_out_Enable <= C;
            ALU0_out_Enable <= D;



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

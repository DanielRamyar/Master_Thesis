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


entity ALU_Control is
    generic(
        reset_Op0: in T_SYSTEM_UINT32;
        reset_Op1: in T_SYSTEM_BOOL;
        reset_Op2: in T_SYSTEM_UINT32;
        reset_Op3: in T_SYSTEM_UINT32;
        reset_A: in T_SYSTEM_BOOL;
        reset_B: in T_SYSTEM_BOOL;
        reset_C: in T_SYSTEM_BOOL;
        reset_D: in T_SYSTEM_BOOL;
        reset_E: in T_SYSTEM_BOOL;
        reset_F: in T_SYSTEM_BOOL;
        reset_G: in T_SYSTEM_BOOL;
        reset_H: in T_SYSTEM_BOOL;
        reset_I: in T_SYSTEM_BOOL;
        reset_J: in T_SYSTEM_BOOL;
        reset_K: in T_SYSTEM_BOOL;
        reset_L: in T_SYSTEM_BOOL
    );
    port(
        -- Input bus m_ALUOp1 signals
        m_ALUOp1_Enable: in T_SYSTEM_BOOL;
        -- Input bus m_ALUOp0 signals
        m_ALUOp0_Enable: in T_SYSTEM_BOOL;
        -- Input bus m_Instruction signals
        m_Instruction_current: in T_SYSTEM_UINT32;

        -- Output bus m_ALUOp_out signals


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
end ALU_Control;

architecture RTL of ALU_Control is




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
    variable current : T_SYSTEM_UINT32;
    variable local_var_0 : T_SYSTEM_INT32;
    variable local_var_1 : T_SYSTEM_BOOL;
    variable local_var_2 : T_SYSTEM_BOOL;
    variable Op0 : T_SYSTEM_UINT32 := reset_Op0;
    variable Op1 : T_SYSTEM_BOOL := reset_Op1;
    variable Op2 : T_SYSTEM_UINT32 := reset_Op2;
    variable Op3 : T_SYSTEM_UINT32 := reset_Op3;
    variable A : T_SYSTEM_BOOL := reset_A;
    variable B : T_SYSTEM_BOOL := reset_B;
    variable C : T_SYSTEM_BOOL := reset_C;
    variable D : T_SYSTEM_BOOL := reset_D;
    variable E : T_SYSTEM_BOOL := reset_E;
    variable F : T_SYSTEM_BOOL := reset_F;
    variable G : T_SYSTEM_BOOL := reset_G;
    variable H : T_SYSTEM_BOOL := reset_H;
    variable I : T_SYSTEM_BOOL := reset_I;
    variable J : T_SYSTEM_BOOL := reset_J;
    variable K : T_SYSTEM_BOOL := reset_K;
    variable L : T_SYSTEM_BOOL := reset_L;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            current := TO_UNSIGNED(0, 32);
            local_var_0 := TO_SIGNED(0, 32);
            local_var_1 := '0';
            local_var_2 := '0';
            Op0 := reset_Op0;
            Op1 := reset_Op1;
            Op2 := reset_Op2;
            Op3 := reset_Op3;
            A := reset_A;
            B := reset_B;
            C := reset_C;
            D := reset_D;
            E := reset_E;
            F := reset_F;
            G := reset_G;
            H := reset_H;
            I := reset_I;
            J := reset_J;
            K := reset_K;
            L := reset_L;

                                    
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


            current := m_Instruction_current;
            if ((shift_right(current, 12)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                A := '1';
            else
                A := '0';
            end if;
            if ((shift_right(current, 13)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                B := '1';
            else
                B := '0';
            end if;
            if ((shift_right(current, 14)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                C := '1';
            else
                C := '0';
            end if;
            if ((shift_right(current, 25)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                D := '1';
            else
                D := '0';
            end if;
            if ((shift_right(current, 26)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                E := '1';
            else
                E := '0';
            end if;
            if ((shift_right(current, 27)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                F := '1';
            else
                F := '0';
            end if;
            if ((shift_right(current, 28)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                G := '1';
            else
                G := '0';
            end if;
            if ((shift_right(current, 29)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                H := '1';
            else
                H := '0';
            end if;
            if ((shift_right(current, 30)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                I := '1';
            else
                I := '0';
            end if;
            if ((shift_right(current, 31)) and TO_UNSIGNED(1, 32)) /= TO_UNSIGNED(0, 32) then
                J := '1';
            else
                J := '0';
            end if;
            K := m_ALUOp0_Enable;
            L := m_ALUOp1_Enable;
            if ((((((((((L = '1') and (not (J = '1'))) and (not (I = '1'))) and (not (H = '1'))) and (not (G = '1'))) and (not (F = '1'))) and (not (E = '1'))) and (not (D = '1'))) and (C = '1')) and (B = '1')) and (not (A = '1')) then
                local_var_0 := TO_SIGNED(1, 32);
            else
                local_var_0 := TO_SIGNED(0, 32);
            end if;
            Op0 := UNSIGNED((local_var_0));
            if not (L = '1') then
                local_var_1 := '1';
            else
                local_var_1 := '0';
            end if;
            if not (K = '1') then
                local_var_2 := '1';
            else
                local_var_2 := '0';
            end if;
            Op1 := (((local_var_1) and (local_var_2)) or K) or L;



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

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
    port(
        -- Input bus m_instruction signals
        m_instruction_Current: in T_SYSTEM_UINT32;

        -- Output bus PCSel signals
        PCSel_Value: out T_SYSTEM_BOOL;
        -- Output bus RegWrite signals
        RegWrite_Enable: out T_SYSTEM_BOOL;
        -- Output bus ALUSrc1 signals
        ALUSrc1_Enable: out T_SYSTEM_BOOL;
        -- Output bus ALUSrc2 signals
        ALUSrc2_Enable: out T_SYSTEM_BOOL;
        -- Output bus ALUOP signals
        ALUOP_Value: out T_SYSTEM_UINT8;
        -- Output bus BJSIGN signals
        BJSIGN_Value: out T_SYSTEM_UINT8;
        -- Output bus MemRead signals
        MemRead_Enable: out T_SYSTEM_BOOL;
        -- Output bus MemWrite signals
        MemWrite_Enable: out T_SYSTEM_BOOL;
        -- Output bus WBSel signals
        WBSel_Value: out T_SYSTEM_UINT8;
        -- Output bus SizeAndSign signals
        SizeAndSign_Value: out T_SYSTEM_UINT8;


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
    variable num : T_SYSTEM_UINT32;
    variable num2 : T_SYSTEM_UINT32;
    variable num3 : T_SYSTEM_UINT32;
    variable local_var_0 : INTEGER;
    variable local_var_1 : INTEGER;
    variable local_var_2 : INTEGER;
    variable local_var_3 : INTEGER;
    variable local_var_4 : INTEGER;
    variable local_var_5 : INTEGER;
    variable local_var_6 : INTEGER;
    variable local_var_7 : INTEGER;
    variable local_var_8 : INTEGER;
    variable local_var_9 : INTEGER;
    variable local_var_10 : INTEGER;
    variable local_var_11 : INTEGER;
    variable local_var_12 : INTEGER;
    variable local_var_13 : INTEGER;

    variable reentry_guard: std_logic;

    -- #### USER-DATA-NONCLOCKEDVARIABLES-START
    -- #### USER-DATA-NONCLOCKEDVARIABLES-END
	begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            PCSel_Value <= '0';
            RegWrite_Enable <= '0';
            ALUSrc1_Enable <= '0';
            ALUSrc2_Enable <= '0';
            ALUOP_Value <= TO_UNSIGNED(0, 8);
            BJSIGN_Value <= TO_UNSIGNED(0, 8);
            MemRead_Enable <= '0';
            MemWrite_Enable <= '0';
            WBSel_Value <= TO_UNSIGNED(0, 8);
            SizeAndSign_Value <= TO_UNSIGNED(0, 8);
            num := TO_UNSIGNED(0, 32);
            num2 := TO_UNSIGNED(0, 32);
            num3 := TO_UNSIGNED(0, 32);
            local_var_0 := 0;
            local_var_1 := 0;
            local_var_2 := 0;
            local_var_3 := 0;
            local_var_4 := 0;
            local_var_5 := 0;
            local_var_6 := 0;
            local_var_7 := 0;
            local_var_8 := 0;
            local_var_9 := 0;
            local_var_10 := 0;
            local_var_11 := 0;
            local_var_12 := 0;
            local_var_13 := 0;

                                    
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


            num := m_instruction_Current and TO_UNSIGNED(127, 32);
            num2 := (shift_right(m_instruction_Current, 12)) and TO_UNSIGNED(7, 32);
            num3 := (shift_right(m_instruction_Current, 25)) and TO_UNSIGNED(127, 32);
            local_var_13 := TO_INTEGER(num);
            case local_var_13 is
                when 0 =>
                    PCSel_Value <= '0';
                    RegWrite_Enable <= '0';
                    ALUSrc1_Enable <= '0';
                    ALUSrc2_Enable <= '0';
                    ALUOP_Value <= TO_UNSIGNED(0, 8);
                    BJSIGN_Value <= TO_UNSIGNED(0, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(0, 8);
                when 51 =>
                    PCSel_Value <= '0';
                    RegWrite_Enable <= '1';
                    ALUSrc1_Enable <= '0';
                    ALUSrc2_Enable <= '0';
                    BJSIGN_Value <= TO_UNSIGNED(0, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(0, 8);
                    local_var_2 := TO_INTEGER(num2);
                    case local_var_2 is
                        when 0 =>
                            local_var_0 := TO_INTEGER(num3);
                            case local_var_0 is
                                when 0 =>
                                    ALUOP_Value <= TO_UNSIGNED(0, 8);
                                when 32 =>
                                    ALUOP_Value <= TO_UNSIGNED(1, 8);
                                when others =>
                            end case;
                        when 7 =>
                            ALUOP_Value <= TO_UNSIGNED(2, 8);
                        when 6 =>
                            ALUOP_Value <= TO_UNSIGNED(3, 8);
                        when 4 =>
                            ALUOP_Value <= TO_UNSIGNED(4, 8);
                        when 1 =>
                            ALUOP_Value <= TO_UNSIGNED(5, 8);
                        when 2 =>
                            ALUOP_Value <= TO_UNSIGNED(6, 8);
                        when 3 =>
                            ALUOP_Value <= TO_UNSIGNED(7, 8);
                        when 5 =>
                            local_var_1 := TO_INTEGER(num3);
                            case local_var_1 is
                                when 0 =>
                                    ALUOP_Value <= TO_UNSIGNED(8, 8);
                                when 32 =>
                                    ALUOP_Value <= TO_UNSIGNED(9, 8);
                                when others =>
                            end case;
                        when others =>
                    end case;
                when 59 =>
                    PCSel_Value <= '0';
                    RegWrite_Enable <= '1';
                    ALUSrc1_Enable <= '0';
                    ALUSrc2_Enable <= '0';
                    BJSIGN_Value <= TO_UNSIGNED(0, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(0, 8);
                    local_var_5 := TO_INTEGER(num2);
                    case local_var_5 is
                        when 0 =>
                            local_var_3 := TO_INTEGER(num3);
                            case local_var_3 is
                                when 0 =>
                                    ALUOP_Value <= TO_UNSIGNED(10, 8);
                                when 32 =>
                                    ALUOP_Value <= TO_UNSIGNED(11, 8);
                                when others =>
                            end case;
                        when 1 =>
                            ALUOP_Value <= TO_UNSIGNED(12, 8);
                        when 5 =>
                            local_var_4 := TO_INTEGER(num3);
                            case local_var_4 is
                                when 0 =>
                                    ALUOP_Value <= TO_UNSIGNED(13, 8);
                                when 32 =>
                                    ALUOP_Value <= TO_UNSIGNED(14, 8);
                                when others =>
                            end case;
                        when others =>
                    end case;
                when 19 =>
                    PCSel_Value <= '0';
                    RegWrite_Enable <= '1';
                    ALUSrc1_Enable <= '0';
                    ALUSrc2_Enable <= '1';
                    BJSIGN_Value <= TO_UNSIGNED(0, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(0, 8);
                    local_var_7 := TO_INTEGER(num2);
                    case local_var_7 is
                        when 0 =>
                            ALUOP_Value <= TO_UNSIGNED(0, 8);
                        when 7 =>
                            ALUOP_Value <= TO_UNSIGNED(2, 8);
                        when 6 =>
                            ALUOP_Value <= TO_UNSIGNED(3, 8);
                        when 4 =>
                            ALUOP_Value <= TO_UNSIGNED(4, 8);
                        when 1 =>
                            ALUOP_Value <= TO_UNSIGNED(5, 8);
                        when 2 =>
                            ALUOP_Value <= TO_UNSIGNED(6, 8);
                        when 3 =>
                            ALUOP_Value <= TO_UNSIGNED(7, 8);
                        when 5 =>
                            local_var_6 := TO_INTEGER(num3);
                            case local_var_6 is
                                when 0 =>
                                    ALUOP_Value <= TO_UNSIGNED(8, 8);
                                when 32 =>
                                    ALUOP_Value <= TO_UNSIGNED(9, 8);
                                when others =>
                            end case;
                        when others =>
                    end case;
                when 27 =>
                    PCSel_Value <= '0';
                    RegWrite_Enable <= '1';
                    ALUSrc1_Enable <= '0';
                    ALUSrc2_Enable <= '1';
                    BJSIGN_Value <= TO_UNSIGNED(0, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(0, 8);
                    local_var_9 := TO_INTEGER(num2);
                    case local_var_9 is
                        when 0 =>
                            ALUOP_Value <= TO_UNSIGNED(10, 8);
                        when 1 =>
                            ALUOP_Value <= TO_UNSIGNED(12, 8);
                        when 5 =>
                            local_var_8 := TO_INTEGER(num3);
                            case local_var_8 is
                                when 0 =>
                                    ALUOP_Value <= TO_UNSIGNED(13, 8);
                                when 32 =>
                                    ALUOP_Value <= TO_UNSIGNED(14, 8);
                                when others =>
                            end case;
                        when others =>
                    end case;
                when 3 =>
                    PCSel_Value <= '0';
                    RegWrite_Enable <= '1';
                    ALUSrc1_Enable <= '0';
                    ALUSrc2_Enable <= '1';
                    ALUOP_Value <= TO_UNSIGNED(0, 8);
                    BJSIGN_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '1';
                    WBSel_Value <= TO_UNSIGNED(1, 8);
                    local_var_10 := TO_INTEGER(num2);
                    case local_var_10 is
                        when 0 =>
                            SizeAndSign_Value <= TO_UNSIGNED(3, 8);
                        when 1 =>
                            SizeAndSign_Value <= TO_UNSIGNED(2, 8);
                        when 2 =>
                            SizeAndSign_Value <= TO_UNSIGNED(1, 8);
                        when 3 =>
                            SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                        when 4 =>
                            SizeAndSign_Value <= TO_UNSIGNED(4, 8);
                        when 5 =>
                            SizeAndSign_Value <= TO_UNSIGNED(5, 8);
                        when 6 =>
                            SizeAndSign_Value <= TO_UNSIGNED(6, 8);
                        when others =>
                    end case;
                when 103 =>
                    PCSel_Value <= '1';
                    RegWrite_Enable <= '1';
                    ALUSrc1_Enable <= '0';
                    ALUSrc2_Enable <= '1';
                    ALUOP_Value <= TO_UNSIGNED(0, 8);
                    BJSIGN_Value <= TO_UNSIGNED(6, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(2, 8);
                when 35 =>
                    PCSel_Value <= '0';
                    RegWrite_Enable <= '0';
                    ALUSrc1_Enable <= '0';
                    ALUSrc2_Enable <= '1';
                    ALUOP_Value <= TO_UNSIGNED(0, 8);
                    BJSIGN_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '1';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(0, 8);
                    local_var_11 := TO_INTEGER(num2);
                    case local_var_11 is
                        when 0 =>
                            SizeAndSign_Value <= TO_UNSIGNED(3, 8);
                        when 1 =>
                            SizeAndSign_Value <= TO_UNSIGNED(2, 8);
                        when 2 =>
                            SizeAndSign_Value <= TO_UNSIGNED(1, 8);
                        when 3 =>
                            SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                        when others =>
                    end case;
                when 99 =>
                    PCSel_Value <= '1';
                    RegWrite_Enable <= '0';
                    ALUSrc1_Enable <= '1';
                    ALUSrc2_Enable <= '1';
                    ALUOP_Value <= TO_UNSIGNED(0, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(0, 8);
                    local_var_12 := TO_INTEGER(num2);
                    case local_var_12 is
                        when 2 | 3 =>
                        when 0 =>
                            BJSIGN_Value <= TO_UNSIGNED(0, 8);
                        when 1 =>
                            BJSIGN_Value <= TO_UNSIGNED(1, 8);
                        when 4 =>
                            BJSIGN_Value <= TO_UNSIGNED(2, 8);
                        when 5 =>
                            BJSIGN_Value <= TO_UNSIGNED(3, 8);
                        when 6 =>
                            BJSIGN_Value <= TO_UNSIGNED(4, 8);
                        when 7 =>
                            BJSIGN_Value <= TO_UNSIGNED(5, 8);
                        when others =>
                    end case;
                when 23 =>
                    PCSel_Value <= '0';
                    RegWrite_Enable <= '1';
                    ALUSrc1_Enable <= '1';
                    ALUSrc2_Enable <= '1';
                    ALUOP_Value <= TO_UNSIGNED(0, 8);
                    BJSIGN_Value <= TO_UNSIGNED(0, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(0, 8);
                when 55 =>
                    PCSel_Value <= '0';
                    RegWrite_Enable <= '1';
                    ALUSrc1_Enable <= '0';
                    ALUSrc2_Enable <= '1';
                    ALUOP_Value <= TO_UNSIGNED(15, 8);
                    BJSIGN_Value <= TO_UNSIGNED(0, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(0, 8);
                when 111 =>
                    PCSel_Value <= '1';
                    RegWrite_Enable <= '1';
                    ALUSrc1_Enable <= '1';
                    ALUSrc2_Enable <= '1';
                    ALUOP_Value <= TO_UNSIGNED(0, 8);
                    BJSIGN_Value <= TO_UNSIGNED(6, 8);
                    SizeAndSign_Value <= TO_UNSIGNED(0, 8);
                    MemWrite_Enable <= '0';
                    MemRead_Enable <= '0';
                    WBSel_Value <= TO_UNSIGNED(2, 8);
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

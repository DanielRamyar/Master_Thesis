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

entity SingleCycleRISCV is
  port(



    -- Interconnection bus GoTo signals
    GoTo_Value: inout T_SYSTEM_BOOL;
    -- Interconnection bus PCSel signals
    PCSel_Value: inout T_SYSTEM_BOOL;
    -- Interconnection bus ANDGate_Output signals
    ANDGate_Output_Value: inout T_SYSTEM_BOOL;
    -- Interconnection bus Next_Output signals
    Next_Output_Address: inout T_SYSTEM_UINT64;
    -- Interconnection bus ALU_Output signals
    ALU_Output_Address: inout T_SYSTEM_UINT64;
    -- Interconnection bus Mux1_Output signals
    Mux1_Output_Address: inout T_SYSTEM_UINT64;
    -- Interconnection bus PC_Output signals
    PC_Output_Address: inout T_SYSTEM_UINT64;
    -- Interconnection bus Read_Register_1 signals
    Read_Register_1_Address: inout T_SYSTEM_UINT32;
    -- Interconnection bus Read_Register_2 signals
    Read_Register_2_Address: inout T_SYSTEM_UINT32;
    -- Interconnection bus Write_Register signals
    Write_Register_Address: inout T_SYSTEM_UINT32;
    -- Interconnection bus Instruction signals
    Instruction_Current: inout T_SYSTEM_UINT32;
    -- Interconnection bus CPU signals
    CPU_Running: inout T_SYSTEM_BOOL;

    -- User defined signals here
    -- #### USER-DATA-ENTITYSIGNALS-START
    -- #### USER-DATA-ENTITYSIGNALS-END

    -- Enable signal
    ENB : in Std_logic;

    -- Finished signal
    FIN : out Std_logic;

	-- Reset signal
    RST : in Std_logic;

	-- Clock signal
	CLK : in Std_logic
  );
end SingleCycleRISCV;

architecture RTL of SingleCycleRISCV is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_ANDGate, RDY_ANDGate : std_logic;

    signal FIN_Mux1, RDY_Mux1 : std_logic;

    signal FIN_PC : std_logic;

    signal FIN_Next, RDY_Next : std_logic;

    signal FIN_IM, RDY_IM : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  ANDGate signals
    ANDGate: entity work.ANDGate
    port map (
        -- Input bus GoTo
        m_Input_1_Value => GoTo_Value,


        -- Input bus PCSel
        m_Input_2_Value => PCSel_Value,


        -- Output bus ANDGate_Output
        Output_Value => ANDGate_Output_Value,



        CLK => CLK,
        RDY => RDY_ANDGate,
        FIN => FIN_ANDGate,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Mux1 signals
    Mux1: entity work.Mux1
    port map (
        -- Input bus Next_Output
        m_Next_Address => Next_Output_Address,


        -- Input bus ALU_Output
        m_ALU_Address => ALU_Output_Address,


        -- Input bus ANDGate_Output
        m_ANDGate_Value => ANDGate_Output_Value,


        -- Output bus Mux1_Output
        Mux_output_Address => Mux1_Output_Address,



        CLK => CLK,
        RDY => RDY_Mux1,
        FIN => FIN_Mux1,
        ENB => ENB,
        RST => RST
    );


    -- Entity  PC signals
    PC: entity work.PC
    generic map(
        reset_address_hold => TO_UNSIGNED(0, 64)
    )
    port map (
        -- Input bus Mux1_Output
        m_Input_Address => Mux1_Output_Address,


        -- Output bus PC_Output
        Output_Address => PC_Output_Address,



        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PC,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Next signals
    Next: entity work.Next
    generic map(
        reset_temp => TO_UNSIGNED(0, 64)
    )
    port map (
        -- Input bus PC_Output
        m_Input_Address => PC_Output_Address,


        -- Output bus Next_Output
        Output_Address => Next_Output_Address,



        CLK => CLK,
        RDY => RDY_Next,
        FIN => FIN_Next,
        ENB => ENB,
        RST => RST
    );


    -- Entity  IM signals
    IM: entity work.IM
    generic map(
        reset_Instruction_Memory => (TO_UNSIGNED(1, 8), TO_UNSIGNED(8, 8), TO_UNSIGNED(137, 8), others => TO_UNSIGNED(51, 8))
    )
    port map (
        -- Input bus PC_Output
        m_input_Address => PC_Output_Address,


        -- Output bus Read_Register_1
        m_read_1_Address => Read_Register_1_Address,


        -- Output bus Read_Register_2
        m_read_2_Address => Read_Register_2_Address,


        -- Output bus Write_Register
        m_write_Address => Write_Register_Address,


        -- Output bus Instruction
        m_Instruction_Current => Instruction_Current,


        -- Output bus CPU
        m_CPU_Running => CPU_Running,



        CLK => CLK,
        RDY => RDY_IM,
        FIN => FIN_IM,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_ANDGate <= RDY;
    -- Setup the RDY signal for Mux1
    process(
      FIN_Next, 
      FIN_ANDGate
    )
    begin
      if FIN_Next = FIN_ANDGate then
        RDY_Mux1 <= FIN_Next;
      end if;
    end process;
    RDY_Next <= FIN_PC;
    RDY_IM <= FIN_PC;

    -- Setup the FIN feedback signals
    process(
      FIN_ANDGate, 
      FIN_Mux1, 
      FIN_PC, 
      FIN_Next, 
      FIN_IM
    )
    begin
      if FIN_ANDGate = FIN_Mux1 AND FIN_ANDGate = FIN_PC AND FIN_ANDGate = FIN_Next AND FIN_ANDGate = FIN_IM then
        FIN <= FIN_ANDGate;
      end if;
    end process;

    -- Propagate all clocked and feedback signals
    process(
        CLK,
        RST)

        variable readyflag: std_logic;
    begin
        if RST = '1' then
            RDY <= '0';
            readyflag := '1';
        elsif rising_edge(CLK) then
            if ENB = '1' then
                readyflag := not readyflag;
                RDY <= readyflag;


            end if;
        end if;
    end process;



-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
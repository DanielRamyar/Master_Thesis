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



    -- Interconnection bus GoTo_Output signals
    GoTo_Output_Value: inout T_SYSTEM_BOOL;
    -- Interconnection bus PCSel signals
    PCSel_Value: inout T_SYSTEM_BOOL;
    -- Interconnection bus ANDGate_Output signals
    ANDGate_Output_Value: inout T_SYSTEM_BOOL;
    -- Interconnection bus Next_Output signals
    Next_Output_Address: inout T_SYSTEM_UINT64;
    -- Interconnection bus ALU_Output signals
    ALU_Output_Value: inout T_SYSTEM_INT64;
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
    -- Interconnection bus WB_Data signals
    WB_Data_Data: inout T_SYSTEM_INT64;
    -- Interconnection bus WB_WriteRegister signals
    WB_WriteRegister_Address: inout T_SYSTEM_UINT32;
    -- Interconnection bus WB_WriteControl signals
    WB_WriteControl_Enable: inout T_SYSTEM_BOOL;
    -- Interconnection bus RS1 signals
    RS1_Data: inout T_SYSTEM_INT64;
    -- Interconnection bus RS2 signals
    RS2_Data: inout T_SYSTEM_INT64;
    -- Interconnection bus Immediate signals
    Immediate_Immediate: inout T_SYSTEM_INT64;
    -- Interconnection bus RegWrite signals
    RegWrite_Enable: inout T_SYSTEM_BOOL;
    -- Interconnection bus ALUSrc1 signals
    ALUSrc1_Enable: inout T_SYSTEM_BOOL;
    -- Interconnection bus ALUSrc2 signals
    ALUSrc2_Enable: inout T_SYSTEM_BOOL;
    -- Interconnection bus ALUOP signals
    ALUOP_Value: inout T_SYSTEM_UINT8;
    -- Interconnection bus BJSIGN signals
    BJSIGN_Value: inout T_SYSTEM_UINT8;
    -- Interconnection bus MemRead signals
    MemRead_Enable: inout T_SYSTEM_BOOL;
    -- Interconnection bus MemWrite signals
    MemWrite_Enable: inout T_SYSTEM_BOOL;
    -- Interconnection bus WBSel signals
    WBSel_Value: inout T_SYSTEM_UINT8;
    -- Interconnection bus SizeAndSign signals
    SizeAndSign_Value: inout T_SYSTEM_UINT8;
    -- Interconnection bus Mux4_Output signals
    Mux4_Output_Data: inout T_SYSTEM_INT64;
    -- Interconnection bus Mux2_Output signals
    Mux2_Output_Data: inout T_SYSTEM_INT64;
    -- Interconnection bus Mux3_Output signals
    Mux3_Output_Data: inout T_SYSTEM_INT64;
    -- Interconnection bus DM_Output signals
    DM_Output_Data: inout T_SYSTEM_INT64;

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

    signal FIN_Register, RDY_Register : std_logic;

    signal FIN_ImmGen, RDY_ImmGen : std_logic;

    signal FIN_Control, RDY_Control : std_logic;

    signal FIN_WriteBuffer : std_logic;

    signal FIN_Mux2, RDY_Mux2 : std_logic;

    signal FIN_Mux3, RDY_Mux3 : std_logic;

    signal FIN_ALU, RDY_ALU : std_logic;

    signal FIN_GoTo, RDY_GoTo : std_logic;

    signal FIN_DM, RDY_DM : std_logic;

    signal FIN_Mux4, RDY_Mux4 : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  ANDGate signals
    ANDGate: entity work.ANDGate
    port map (
        -- Input bus GoTo_Output
        m_Input_1_Value => GoTo_Output_Value,


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
        m_ALU_Value => ALU_Output_Value,


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
        reset_Instruction_Memory => (TO_UNSIGNED(0, 8), TO_UNSIGNED(160, 8), TO_UNSIGNED(0, 8), TO_UNSIGNED(19, 8), TO_UNSIGNED(129, 8), TO_UNSIGNED(64, 8), TO_UNSIGNED(6, 8), TO_UNSIGNED(147, 8), TO_UNSIGNED(12, 8), TO_UNSIGNED(128, 8), TO_UNSIGNED(7, 8), TO_UNSIGNED(19, 8), TO_UNSIGNED(3, 8), TO_UNSIGNED(128, 8), TO_UNSIGNED(7, 8), TO_UNSIGNED(147, 8), TO_UNSIGNED(0, 8), TO_UNSIGNED(16, 8), TO_UNSIGNED(8, 8), TO_UNSIGNED(19, 8), TO_UNSIGNED(255, 8), TO_UNSIGNED(240, 8), TO_UNSIGNED(8, 8), TO_UNSIGNED(147, 8), TO_UNSIGNED(1, 8), TO_UNSIGNED(248, 8), TO_UNSIGNED(25, 8), TO_UNSIGNED(19, 8), TO_UNSIGNED(1, 8), TO_UNSIGNED(249, 8), TO_UNSIGNED(25, 8), TO_UNSIGNED(147, 8), TO_UNSIGNED(0, 8), TO_UNSIGNED(25, 8), TO_UNSIGNED(156, 8), TO_UNSIGNED(147, 8), TO_UNSIGNED(255, 8), TO_UNSIGNED(55, 8), TO_UNSIGNED(180, 8), TO_UNSIGNED(35, 8), TO_UNSIGNED(254, 8), TO_UNSIGNED(135, 8), TO_UNSIGNED(186, 8), TO_UNSIGNED(3, 8), TO_UNSIGNED(253, 8), TO_UNSIGNED(151, 8), TO_UNSIGNED(180, 8), TO_UNSIGNED(35, 8), TO_UNSIGNED(252, 8), TO_UNSIGNED(135, 8), TO_UNSIGNED(186, 8), others => TO_UNSIGNED(131, 8))
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


    -- Entity  Register signals
    vhdl_Register: entity work.vhdl_Register
    generic map(
        reset_m_register => (others => TO_SIGNED(0, 64))
    )
    port map (
        -- Input bus Read_Register_1
        m_read_1_Address => Read_Register_1_Address,


        -- Input bus Read_Register_2
        m_read_2_Address => Read_Register_2_Address,


        -- Input bus WB_Data
        m_write_data_Data => WB_Data_Data,


        -- Input bus WB_WriteRegister
        m_write_Address => WB_WriteRegister_Address,


        -- Input bus WB_WriteControl
        m_write_control_Enable => WB_WriteControl_Enable,


        -- Output bus RS1
        output_1_Data => RS1_Data,


        -- Output bus RS2
        output_2_Data => RS2_Data,



        CLK => CLK,
        RDY => RDY_Register,
        FIN => FIN_Register,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ImmGen signals
    ImmGen: entity work.ImmGen
    generic map(
        reset_temp0 => TO_SIGNED(0, 64),
        reset_temp1 => TO_UNSIGNED(0, 32),
        reset_temp2 => TO_UNSIGNED(0, 32),
        reset_temp3 => TO_UNSIGNED(0, 32),
        reset_temp4 => TO_UNSIGNED(0, 32)
    )
    port map (
        -- Input bus Instruction
        m_instruction_Current => Instruction_Current,


        -- Output bus Immediate
        output_Immediate => Immediate_Immediate,



        CLK => CLK,
        RDY => RDY_ImmGen,
        FIN => FIN_ImmGen,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Control signals
    Control: entity work.Control
    port map (
        -- Input bus Instruction
        m_instruction_Current => Instruction_Current,


        -- Output bus PCSel
        PCSel_Value => PCSel_Value,


        -- Output bus RegWrite
        RegWrite_Enable => RegWrite_Enable,


        -- Output bus ALUSrc1
        ALUSrc1_Enable => ALUSrc1_Enable,


        -- Output bus ALUSrc2
        ALUSrc2_Enable => ALUSrc2_Enable,


        -- Output bus ALUOP
        ALUOP_Value => ALUOP_Value,


        -- Output bus BJSIGN
        BJSIGN_Value => BJSIGN_Value,


        -- Output bus MemRead
        MemRead_Enable => MemRead_Enable,


        -- Output bus MemWrite
        MemWrite_Enable => MemWrite_Enable,


        -- Output bus WBSel
        WBSel_Value => WBSel_Value,


        -- Output bus SizeAndSign
        SizeAndSign_Value => SizeAndSign_Value,



        CLK => CLK,
        RDY => RDY_Control,
        FIN => FIN_Control,
        ENB => ENB,
        RST => RST
    );


    -- Entity  WriteBuffer signals
    WriteBuffer: entity work.WriteBuffer
    generic map(
        reset_WB_Data_Hold => TO_SIGNED(0, 64),
        reset_WB_RegisterWrite_Hold => TO_UNSIGNED(0, 32),
        reset_WB_WriteControl_Hold => '0'
    )
    port map (
        -- Input bus Mux4_Output
        m_write_data_Data => Mux4_Output_Data,


        -- Input bus Write_Register
        m_write_register_Address => Write_Register_Address,


        -- Input bus RegWrite
        m_write_control_Enable => RegWrite_Enable,


        -- Output bus WB_Data
        m_WB_Data_Data => WB_Data_Data,


        -- Output bus WB_WriteRegister
        m_WB_WriteRegister_Address => WB_WriteRegister_Address,


        -- Output bus WB_WriteControl
        m_WB_WriteControl_Enable => WB_WriteControl_Enable,



        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WriteBuffer,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Mux2 signals
    Mux2: entity work.Mux2
    port map (
        -- Input bus RS1
        m_RS1_Data => RS1_Data,


        -- Input bus PC_Output
        m_PC_Output_Address => PC_Output_Address,


        -- Input bus ALUSrc1
        m_ALUSrc1_Enable => ALUSrc1_Enable,


        -- Output bus Mux2_Output
        Mux_output_Data => Mux2_Output_Data,



        CLK => CLK,
        RDY => RDY_Mux2,
        FIN => FIN_Mux2,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Mux3 signals
    Mux3: entity work.Mux3
    port map (
        -- Input bus RS2
        m_RS2_Data => RS2_Data,


        -- Input bus Immediate
        m_Immediate_Immediate => Immediate_Immediate,


        -- Input bus ALUSrc2
        m_ALUSrc2_Enable => ALUSrc2_Enable,


        -- Output bus Mux3_Output
        Mux_output_Data => Mux3_Output_Data,



        CLK => CLK,
        RDY => RDY_Mux3,
        FIN => FIN_Mux3,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ALU signals
    ALU: entity work.ALU
    port map (
        -- Input bus ALUOP
        m_ALUOP_Value => ALUOP_Value,


        -- Input bus Mux2_Output
        m_ALU_In_1_Data => Mux2_Output_Data,


        -- Input bus Mux3_Output
        m_ALU_In_2_Data => Mux3_Output_Data,


        -- Output bus ALU_Output
        output_Value => ALU_Output_Value,



        CLK => CLK,
        RDY => RDY_ALU,
        FIN => FIN_ALU,
        ENB => ENB,
        RST => RST
    );


    -- Entity  GoTo signals
    GoTo: entity work.GoTo
    port map (
        -- Input bus RS1
        m_RS1_Data => RS1_Data,


        -- Input bus RS2
        m_RS2_Data => RS2_Data,


        -- Input bus BJSIGN
        m_BJSIGN_Value => BJSIGN_Value,


        -- Output bus GoTo_Output
        output_Value => GoTo_Output_Value,



        CLK => CLK,
        RDY => RDY_GoTo,
        FIN => FIN_GoTo,
        ENB => ENB,
        RST => RST
    );


    -- Entity  DM signals
    DM: entity work.DM
    generic map(
        reset_Data_Memory => (others => TO_UNSIGNED(0, 8))
    )
    port map (
        -- Input bus ALU_Output
        m_Address_Value => ALU_Output_Value,


        -- Input bus RS2
        m_Data_input_Data => RS2_Data,


        -- Input bus MemRead
        m_MemRead_Enable => MemRead_Enable,


        -- Input bus MemWrite
        m_MemWrite_Enable => MemWrite_Enable,


        -- Input bus SizeAndSign
        m_SizeAndSign_Value => SizeAndSign_Value,


        -- Output bus DM_Output
        output_Data => DM_Output_Data,



        CLK => CLK,
        RDY => RDY_DM,
        FIN => FIN_DM,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Mux4 signals
    Mux4: entity work.Mux4
    port map (
        -- Input bus ALU_Output
        m_ALU_Output_Value => ALU_Output_Value,


        -- Input bus DM_Output
        m_DM_Output_Data => DM_Output_Data,


        -- Input bus Next_Output
        m_Next_Output_Address => Next_Output_Address,


        -- Input bus WBSel
        m_WBSel_Value => WBSel_Value,


        -- Output bus Mux4_Output
        Mux_output_Data => Mux4_Output_Data,



        CLK => CLK,
        RDY => RDY_Mux4,
        FIN => FIN_Mux4,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    -- Setup the RDY signal for ANDGate
    process(
      FIN_GoTo, 
      FIN_Control
    )
    begin
      if FIN_GoTo = FIN_Control then
        RDY_ANDGate <= FIN_GoTo;
      end if;
    end process;
    -- Setup the RDY signal for Mux1
    process(
      FIN_Next, 
      FIN_ALU, 
      FIN_ANDGate
    )
    begin
      if FIN_Next = FIN_ALU AND FIN_Next = FIN_ANDGate then
        RDY_Mux1 <= FIN_Next;
      end if;
    end process;
    RDY_Next <= FIN_PC;
    RDY_IM <= FIN_PC;
    -- Setup the RDY signal for Register
    process(
      FIN_IM, 
      FIN_WriteBuffer
    )
    begin
      if FIN_IM = FIN_WriteBuffer then
        RDY_Register <= FIN_IM;
      end if;
    end process;
    RDY_ImmGen <= FIN_IM;
    RDY_Control <= FIN_IM;
    -- Setup the RDY signal for Mux2
    process(
      FIN_Register, 
      FIN_PC, 
      FIN_Control
    )
    begin
      if FIN_Register = FIN_PC AND FIN_Register = FIN_Control then
        RDY_Mux2 <= FIN_Register;
      end if;
    end process;
    -- Setup the RDY signal for Mux3
    process(
      FIN_Register, 
      FIN_ImmGen, 
      FIN_Control
    )
    begin
      if FIN_Register = FIN_ImmGen AND FIN_Register = FIN_Control then
        RDY_Mux3 <= FIN_Register;
      end if;
    end process;
    -- Setup the RDY signal for ALU
    process(
      FIN_Control, 
      FIN_Mux2, 
      FIN_Mux3
    )
    begin
      if FIN_Control = FIN_Mux2 AND FIN_Control = FIN_Mux3 then
        RDY_ALU <= FIN_Control;
      end if;
    end process;
    -- Setup the RDY signal for GoTo
    process(
      FIN_Register, 
      FIN_Control
    )
    begin
      if FIN_Register = FIN_Control then
        RDY_GoTo <= FIN_Register;
      end if;
    end process;
    -- Setup the RDY signal for DM
    process(
      FIN_ALU, 
      FIN_Register, 
      FIN_Control
    )
    begin
      if FIN_ALU = FIN_Register AND FIN_ALU = FIN_Control then
        RDY_DM <= FIN_ALU;
      end if;
    end process;
    -- Setup the RDY signal for Mux4
    process(
      FIN_ALU, 
      FIN_DM, 
      FIN_Next, 
      FIN_Control
    )
    begin
      if FIN_ALU = FIN_DM AND FIN_ALU = FIN_Next AND FIN_ALU = FIN_Control then
        RDY_Mux4 <= FIN_ALU;
      end if;
    end process;

    -- Setup the FIN feedback signals
    process(
      FIN_ANDGate, 
      FIN_Mux1, 
      FIN_PC, 
      FIN_Next, 
      FIN_IM, 
      FIN_Register, 
      FIN_ImmGen, 
      FIN_Control, 
      FIN_WriteBuffer, 
      FIN_Mux2, 
      FIN_Mux3, 
      FIN_ALU, 
      FIN_GoTo, 
      FIN_DM, 
      FIN_Mux4
    )
    begin
      if FIN_ANDGate = FIN_Mux1 AND FIN_ANDGate = FIN_PC AND FIN_ANDGate = FIN_Next AND FIN_ANDGate = FIN_IM AND FIN_ANDGate = FIN_Register AND FIN_ANDGate = FIN_ImmGen AND FIN_ANDGate = FIN_Control AND FIN_ANDGate = FIN_WriteBuffer AND FIN_ANDGate = FIN_Mux2 AND FIN_ANDGate = FIN_Mux3 AND FIN_ANDGate = FIN_ALU AND FIN_ANDGate = FIN_GoTo AND FIN_ANDGate = FIN_DM AND FIN_ANDGate = FIN_Mux4 then
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
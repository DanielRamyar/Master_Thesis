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


    -- Top-level bus PC_Input signals
    PC_Input_Address: in T_SYSTEM_UINT32;

    -- Top-level bus ProgramCounter_To_InstructionMemory signals
    ProgramCounter_To_InstructionMemory_Address: out T_SYSTEM_UINT32;

    -- Top-level bus Incrementer_Output signals
    Incrementer_Output_Address: out T_SYSTEM_UINT32;

    -- Top-level bus Read_Register_1 signals
    Read_Register_1_address: in T_SYSTEM_UINT32;

    -- Top-level bus Read_Register_2 signals
    Read_Register_2_address: in T_SYSTEM_UINT32;

    -- Top-level bus Write_Register signals
    Write_Register_address: in T_SYSTEM_UINT32;

    -- Top-level bus Write_Control signals
    Write_Control_Enable: in T_SYSTEM_BOOL;

    -- Top-level bus WB_Data signals
    WB_Data_Data: out T_SYSTEM_INT32;

    -- Top-level bus WB_RegisterWrite signals
    WB_RegisterWrite_address: out T_SYSTEM_UINT32;

    -- Top-level bus WB_WriteControl signals
    WB_WriteControl_Enable: out T_SYSTEM_BOOL;

    -- Top-level bus Reg1_To_ALU signals
    Reg1_To_ALU_Data: out T_SYSTEM_INT32;

    -- Top-level bus Reg2_To_Mux signals
    Reg2_To_Mux_Data: out T_SYSTEM_INT32;

    -- Top-level bus OperationCode signals
    OperationCode_Value: in T_SYSTEM_UINT8;

    -- Top-level bus Reg_Mux_Output signals
    Reg_Mux_Output_Data: out T_SYSTEM_INT32;

    -- Top-level bus ALU_Output signals
    ALU_Output_Value: out T_SYSTEM_INT32;

    -- Top-level bus Zero_out signals
    Zero_out_Value: out T_SYSTEM_BOOL;

    -- Top-level bus Write_Data signals
    Write_Data_Data: in T_SYSTEM_INT32;



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

    signal FIN_PC, RDY_PC : std_logic;

    signal FIN_Incrementer, RDY_Incrementer : std_logic;

    signal FIN_Inc_mux : std_logic;

    signal FIN_IM, RDY_IM : std_logic;

    signal FIN_Register, RDY_Register : std_logic;

    signal FIN_ALU, RDY_ALU : std_logic;

    signal FIN_Reg_mux, RDY_Reg_mux : std_logic;

    signal FIN_Mem_mux, RDY_Mem_mux : std_logic;

    signal FIN_WriteBuffer : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  PC signals
    PC: entity work.PC
    generic map(
        reset_address_hold => TO_UNSIGNED(0, 32)
    )
    port map (
        -- Input bus PC_Input
        m_input_Address => PC_Input_Address,


        -- Output bus ProgramCounter_To_InstructionMemory
        output_Address => ProgramCounter_To_InstructionMemory_Address,



        CLK => CLK,
        RDY => RDY_PC,
        FIN => FIN_PC,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Incrementer signals
    Incrementer: entity work.Incrementer
    generic map(
        reset_temp => TO_UNSIGNED(0, 32)
    )
    port map (
        -- Input bus ProgramCounter_To_InstructionMemory
        m_input_Address => ProgramCounter_To_InstructionMemory_Address,


        -- Output bus Incrementer_Output
        output_Address => Incrementer_Output_Address,



        CLK => CLK,
        RDY => RDY_Incrementer,
        FIN => FIN_Incrementer,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Inc_mux signals
    Inc_mux: entity work.Inc_mux
    port map (
        -- Input bus Incrementer_Output
        m_input_Address => Incrementer_Output_Address,


        -- Output bus PC_Input
        Mux_out_Address => PC_Input_Address,



        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Inc_mux,
        ENB => ENB,
        RST => RST
    );


    -- Entity  IM signals
    IM: entity work.IM
    generic map(
        reset_Instruction_Memory => (TO_UNSIGNED(1, 8), TO_UNSIGNED(8, 8), TO_UNSIGNED(137, 8), TO_UNSIGNED(51, 8), TO_UNSIGNED(0, 8), TO_UNSIGNED(248, 8), TO_UNSIGNED(10, 8), others => TO_UNSIGNED(51, 8))
    )
    port map (
        -- Input bus ProgramCounter_To_InstructionMemory
        m_input_Address => ProgramCounter_To_InstructionMemory_Address,


        -- Output bus Read_Register_1
        m_read_1_address => Read_Register_1_address,


        -- Output bus Read_Register_2
        m_read_2_address => Read_Register_2_address,


        -- Output bus Write_Register
        m_write_address => Write_Register_address,


        -- Output bus Write_Control
        m_write_control_Enable => Write_Control_Enable,



        CLK => CLK,
        RDY => RDY_IM,
        FIN => FIN_IM,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Register signals
    vhdl_Register: entity work.vhdl_Register
    generic map(
        reset_m_register => (TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(0, 32), TO_SIGNED(2, 32), TO_SIGNED(4, 32), TO_SIGNED(7, 32), others => TO_SIGNED(0, 32))
    )
    port map (
        -- Input bus Read_Register_1
        m_read_1_address => Read_Register_1_address,


        -- Input bus Read_Register_2
        m_read_2_address => Read_Register_2_address,


        -- Input bus WB_Data
        m_write_data_Data => WB_Data_Data,


        -- Input bus WB_RegisterWrite
        m_write_address => WB_RegisterWrite_address,


        -- Input bus WB_WriteControl
        m_write_control_Enable => WB_WriteControl_Enable,


        -- Output bus Reg1_To_ALU
        output_1_Data => Reg1_To_ALU_Data,


        -- Output bus Reg2_To_Mux
        output_2_Data => Reg2_To_Mux_Data,


        -- Output bus OperationCode
        m_OperationCode_Value => OperationCode_Value,



        CLK => CLK,
        RDY => RDY_Register,
        FIN => FIN_Register,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ALU signals
    ALU: entity work.ALU
    port map (
        -- Input bus OperationCode
        m_OperationCode_Value => OperationCode_Value,


        -- Input bus Reg1_To_ALU
        m_ALU_In_1_Data => Reg1_To_ALU_Data,


        -- Input bus Reg_Mux_Output
        m_ALU_In_2_Data => Reg_Mux_Output_Data,


        -- Output bus ALU_Output
        output_Value => ALU_Output_Value,


        -- Output bus Zero_out
        zero_out_Value => Zero_out_Value,



        CLK => CLK,
        RDY => RDY_ALU,
        FIN => FIN_ALU,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Reg_mux signals
    Reg_mux: entity work.Reg_mux
    port map (
        -- Input bus Reg2_To_Mux
        m_Reg_in_Data => Reg2_To_Mux_Data,


        -- Output bus Reg_Mux_Output
        Mux_out_Data => Reg_Mux_Output_Data,



        CLK => CLK,
        RDY => RDY_Reg_mux,
        FIN => FIN_Reg_mux,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Mem_mux signals
    Mem_mux: entity work.Mem_mux
    port map (
        -- Input bus ALU_Output
        m_ALU_in_Value => ALU_Output_Value,


        -- Output bus Write_Data
        Mux_out_Data => Write_Data_Data,



        CLK => CLK,
        RDY => RDY_Mem_mux,
        FIN => FIN_Mem_mux,
        ENB => ENB,
        RST => RST
    );


    -- Entity  WriteBuffer signals
    WriteBuffer: entity work.WriteBuffer
    generic map(
        reset_WB_Data_Hold => TO_SIGNED(0, 32),
        reset_WB_RegisterWrite_Hold => TO_UNSIGNED(0, 32),
        reset_WB_WriteControl_Hold => '0'
    )
    port map (
        -- Input bus Write_Data
        m_write_data_Data => Write_Data_Data,


        -- Input bus Write_Register
        m_write_address => Write_Register_address,


        -- Input bus Write_Control
        m_write_control_Enable => Write_Control_Enable,


        -- Output bus WB_Data
        m_WB_Data_Data => WB_Data_Data,


        -- Output bus WB_RegisterWrite
        m_WB_RegisterWrite_address => WB_RegisterWrite_address,


        -- Output bus WB_WriteControl
        m_WB_WriteControl_Enable => WB_WriteControl_Enable,



        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WriteBuffer,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_PC <= FIN_Inc_mux;
    RDY_Incrementer <= FIN_PC;
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
    -- Setup the RDY signal for ALU
    process(
      FIN_Register, 
      FIN_Reg_mux
    )
    begin
      if FIN_Register = FIN_Reg_mux then
        RDY_ALU <= FIN_Register;
      end if;
    end process;
    RDY_Reg_mux <= FIN_Register;
    RDY_Mem_mux <= FIN_ALU;

    -- Setup the FIN feedback signals
    process(
      FIN_PC, 
      FIN_Incrementer, 
      FIN_Inc_mux, 
      FIN_IM, 
      FIN_Register, 
      FIN_ALU, 
      FIN_Reg_mux, 
      FIN_Mem_mux, 
      FIN_WriteBuffer
    )
    begin
      if FIN_PC = FIN_Incrementer AND FIN_PC = FIN_Inc_mux AND FIN_PC = FIN_IM AND FIN_PC = FIN_Register AND FIN_PC = FIN_ALU AND FIN_PC = FIN_Reg_mux AND FIN_PC = FIN_Mem_mux AND FIN_PC = FIN_WriteBuffer then
        FIN <= FIN_PC;
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
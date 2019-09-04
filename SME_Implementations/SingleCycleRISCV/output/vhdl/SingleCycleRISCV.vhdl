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

    -- Top-level bus PC_Output signals
    PC_Output_Address: out T_SYSTEM_UINT32;

    -- Top-level bus IM_Output signals
    IM_Output_Instruction: out T_SYSTEM_UINT32;

    -- Top-level bus Read_Register_1 signals
    Read_Register_1_address: in T_SYSTEM_UINT32;

    -- Top-level bus Read_Register_2 signals
    Read_Register_2_address: in T_SYSTEM_UINT32;

    -- Top-level bus Write_Register signals
    Write_Register_address: in T_SYSTEM_UINT32;

    -- Top-level bus Write_Data signals
    Write_Data_Data: in T_SYSTEM_INT32;

    -- Top-level bus Write_Control signals
    Write_Control_Enable: in T_SYSTEM_BOOL;

    -- Top-level bus Read_Output_1 signals
    Read_Output_1_Data: out T_SYSTEM_INT32;

    -- Top-level bus Read_Output_2 signals
    Read_Output_2_Data: out T_SYSTEM_INT32;

    -- Top-level bus OperationCode signals
    OperationCode_Value: in T_SYSTEM_UINT8;

    -- Top-level bus Reg_Mux_Output signals
    Reg_Mux_Output_Data: out T_SYSTEM_INT32;

    -- Top-level bus ALU_Output signals
    ALU_Output_Value: out T_SYSTEM_INT32;

    -- Top-level bus Zero_out signals
    Zero_out_Value: out T_SYSTEM_BOOL;



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

    signal FIN_IM, RDY_IM : std_logic;

    signal FIN_splitter, RDY_splitter : std_logic;

    signal FIN_Register, RDY_Register : std_logic;

    signal FIN_ALU, RDY_ALU : std_logic;

    signal FIN_Reg_mux, RDY_Reg_mux : std_logic;


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


        -- Output bus PC_Output
        output_Address => PC_Output_Address,



        CLK => CLK,
        RDY => RDY_PC,
        FIN => FIN_PC,
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


        -- Output bus IM_Output
        output_Instruction => IM_Output_Instruction,



        CLK => CLK,
        RDY => RDY_IM,
        FIN => FIN_IM,
        ENB => ENB,
        RST => RST
    );


    -- Entity  splitter signals
    splitter: entity work.splitter
    port map (
        -- Input bus IM_Output
        m_input_Instruction => IM_Output_Instruction,


        -- Output bus Read_Register_1
        m_read_1_address => Read_Register_1_address,


        -- Output bus Read_Register_2
        m_read_2_address => Read_Register_2_address,


        -- Output bus Write_Register
        m_write_address => Write_Register_address,


        -- Output bus Write_Data
        m_write_data_Data => Write_Data_Data,


        -- Output bus Write_Control
        m_write_control_Enable => Write_Control_Enable,



        CLK => CLK,
        RDY => RDY_splitter,
        FIN => FIN_splitter,
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


        -- Input bus Write_Register
        m_write_address => Write_Register_address,


        -- Input bus Write_Data
        m_write_data_Data => Write_Data_Data,


        -- Input bus Write_Control
        m_write_control_Enable => Write_Control_Enable,


        -- Output bus Read_Output_1
        output_1_Data => Read_Output_1_Data,


        -- Output bus Read_Output_2
        output_2_Data => Read_Output_2_Data,


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


        -- Input bus Read_Output_1
        m_ALU_In_1_Data => Read_Output_1_Data,


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
        -- Input bus Read_Output_2
        m_Reg_in_Data => Read_Output_2_Data,


        -- Output bus Reg_Mux_Output
        Mux_out_Data => Reg_Mux_Output_Data,



        CLK => CLK,
        RDY => RDY_Reg_mux,
        FIN => FIN_Reg_mux,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_PC <= RDY;
    RDY_IM <= FIN_PC;
    RDY_splitter <= FIN_IM;
    RDY_Register <= FIN_splitter;
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

    -- Setup the FIN feedback signals
    process(
      FIN_PC, 
      FIN_IM, 
      FIN_splitter, 
      FIN_Register, 
      FIN_ALU, 
      FIN_Reg_mux
    )
    begin
      if FIN_PC = FIN_IM AND FIN_PC = FIN_splitter AND FIN_PC = FIN_Register AND FIN_PC = FIN_ALU AND FIN_PC = FIN_Reg_mux then
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
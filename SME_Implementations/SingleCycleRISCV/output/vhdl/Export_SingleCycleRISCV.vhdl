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

entity SingleCycleRISCV_export is
  port(

    -- Top-level bus PC_Input signals
    PC_Input_Address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus ProgramCounter_To_InstructionMemory signals
    ProgramCounter_To_InstructionMemory_Address: out STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Read_Register_1 signals
    Read_Register_1_address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Read_Register_2 signals
    Read_Register_2_address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Write_Register signals
    Write_Register_address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Write_Data signals
    Write_Data_Data: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Write_Control signals
    Write_Control_Enable: in STD_LOGIC;

    -- Top-level bus Reg1_To_ALU signals
    Reg1_To_ALU_Data: out STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Reg2_To_Mux signals
    Reg2_To_Mux_Data: out STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus OperationCode signals
    OperationCode_Value: in STD_LOGIC_VECTOR(7 downto 0);

    -- Top-level bus Reg_Mux_Output signals
    Reg_Mux_Output_Data: out STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus ALU_Output signals
    ALU_Output_Value: out STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Zero_out signals
    Zero_out_Value: out STD_LOGIC;


    -- User defined signals here
    -- #### USER-DATA-ENTITYSIGNALS-START
    -- #### USER-DATA-ENTITYSIGNALS-END


    -- Enable signal
    ENB : in STD_LOGIC;

	-- Reset signal
    RST : in STD_LOGIC;

    -- Finished signal
    FIN : out Std_logic;

    -- Clock signal
    CLK : in STD_LOGIC
  );
end SingleCycleRISCV_export;



architecture RTL of SingleCycleRISCV_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END

  -- Intermediate conversion signal to convert internal types to external ones
  signal tmp_ProgramCounter_To_InstructionMemory_Address : T_SYSTEM_UINT32;
  signal tmp_Reg1_To_ALU_Data : T_SYSTEM_INT32;
  signal tmp_Reg2_To_Mux_Data : T_SYSTEM_INT32;
  signal tmp_Reg_Mux_Output_Data : T_SYSTEM_INT32;
  signal tmp_ALU_Output_Value : T_SYSTEM_INT32;

begin

    -- Carry converted signals from entity to wrapped outputs
  ProgramCounter_To_InstructionMemory_Address <= std_logic_vector(tmp_ProgramCounter_To_InstructionMemory_Address);
  Reg1_To_ALU_Data <= std_logic_vector(tmp_Reg1_To_ALU_Data);
  Reg2_To_Mux_Data <= std_logic_vector(tmp_Reg2_To_Mux_Data);
  Reg_Mux_Output_Data <= std_logic_vector(tmp_Reg_Mux_Output_Data);
  ALU_Output_Value <= std_logic_vector(tmp_ALU_Output_Value);

    -- Entity SingleCycleRISCV signals
    SingleCycleRISCV: entity work.SingleCycleRISCV
    port map (
        -- Input bus PC_Input
        PC_Input_Address => unsigned(PC_Input_Address),

        -- Output bus ProgramCounter_To_InstructionMemory
        ProgramCounter_To_InstructionMemory_Address => tmp_ProgramCounter_To_InstructionMemory_Address,

        -- Input bus Read_Register_1
        Read_Register_1_address => unsigned(Read_Register_1_address),

        -- Input bus Read_Register_2
        Read_Register_2_address => unsigned(Read_Register_2_address),

        -- Input bus Write_Register
        Write_Register_address => unsigned(Write_Register_address),

        -- Input bus Write_Data
        Write_Data_Data => signed(Write_Data_Data),

        -- Input bus Write_Control
        Write_Control_Enable => Write_Control_Enable,

        -- Output bus Reg1_To_ALU
        Reg1_To_ALU_Data => tmp_Reg1_To_ALU_Data,

        -- Output bus Reg2_To_Mux
        Reg2_To_Mux_Data => tmp_Reg2_To_Mux_Data,

        -- Input bus OperationCode
        OperationCode_Value => unsigned(OperationCode_Value),

        -- Output bus Reg_Mux_Output
        Reg_Mux_Output_Data => tmp_Reg_Mux_Output_Data,

        -- Output bus ALU_Output
        ALU_Output_Value => tmp_ALU_Output_Value,

        -- Output bus Zero_out
        Zero_out_Value => Zero_out_Value,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
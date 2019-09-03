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

    -- Top-level bus PC_Output signals
    PC_Output_Address: out STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus IM_Output signals
    IM_Output_Instruction: out STD_LOGIC_VECTOR(31 downto 0);

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

    -- Top-level bus Read_Output_1 signals
    Read_Output_1_Data: out STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Read_Output_2 signals
    Read_Output_2_Data: out STD_LOGIC_VECTOR(31 downto 0);


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
  signal tmp_PC_Output_Address : T_SYSTEM_UINT32;
  signal tmp_IM_Output_Instruction : T_SYSTEM_UINT32;
  signal tmp_Read_Output_1_Data : T_SYSTEM_INT32;
  signal tmp_Read_Output_2_Data : T_SYSTEM_INT32;

begin

    -- Carry converted signals from entity to wrapped outputs
  PC_Output_Address <= std_logic_vector(tmp_PC_Output_Address);
  IM_Output_Instruction <= std_logic_vector(tmp_IM_Output_Instruction);
  Read_Output_1_Data <= std_logic_vector(tmp_Read_Output_1_Data);
  Read_Output_2_Data <= std_logic_vector(tmp_Read_Output_2_Data);

    -- Entity SingleCycleRISCV signals
    SingleCycleRISCV: entity work.SingleCycleRISCV
    port map (
        -- Input bus PC_Input
        PC_Input_Address => unsigned(PC_Input_Address),

        -- Output bus PC_Output
        PC_Output_Address => tmp_PC_Output_Address,

        -- Output bus IM_Output
        IM_Output_Instruction => tmp_IM_Output_Instruction,

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

        -- Output bus Read_Output_1
        Read_Output_1_Data => tmp_Read_Output_1_Data,

        -- Output bus Read_Output_2
        Read_Output_2_Data => tmp_Read_Output_2_Data,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
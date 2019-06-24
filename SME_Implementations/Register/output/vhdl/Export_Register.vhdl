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

entity vhdl_Register_export is
  port(

    -- Top-level bus RegisterNS_Read_Register_1 signals
    RegisterNS_Read_Register_1_address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus RegisterNS_Read_Register_2 signals
    RegisterNS_Read_Register_2_address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus RegisterNS_Write_Register signals
    RegisterNS_Write_Register_address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus RegisterNS_Write_Data signals
    RegisterNS_Write_Data_Data: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus RegisterNS_Write_Control signals
    RegisterNS_Write_Control_Enable: in STD_LOGIC;

    -- Top-level bus RegisterNS_Read_Output_1 signals
    RegisterNS_Read_Output_1_Data: out STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus RegisterNS_Read_Output_2 signals
    RegisterNS_Read_Output_2_Data: out STD_LOGIC_VECTOR(31 downto 0);


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
end vhdl_Register_export;



architecture RTL of vhdl_Register_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END

  -- Intermediate conversion signal to convert internal types to external ones
  signal tmp_RegisterNS_Read_Output_1_Data : T_SYSTEM_INT32;
  signal tmp_RegisterNS_Read_Output_2_Data : T_SYSTEM_INT32;

begin

    -- Carry converted signals from entity to wrapped outputs
  RegisterNS_Read_Output_1_Data <= std_logic_vector(tmp_RegisterNS_Read_Output_1_Data);
  RegisterNS_Read_Output_2_Data <= std_logic_vector(tmp_RegisterNS_Read_Output_2_Data);

    -- Entity vhdl_Register signals
    vhdl_Register: entity work.vhdl_Register
    port map (
        -- Input bus RegisterNS_Read_Register_1
        RegisterNS_Read_Register_1_address => unsigned(RegisterNS_Read_Register_1_address),

        -- Input bus RegisterNS_Read_Register_2
        RegisterNS_Read_Register_2_address => unsigned(RegisterNS_Read_Register_2_address),

        -- Input bus RegisterNS_Write_Register
        RegisterNS_Write_Register_address => unsigned(RegisterNS_Write_Register_address),

        -- Input bus RegisterNS_Write_Data
        RegisterNS_Write_Data_Data => signed(RegisterNS_Write_Data_Data),

        -- Input bus RegisterNS_Write_Control
        RegisterNS_Write_Control_Enable => RegisterNS_Write_Control_Enable,

        -- Output bus RegisterNS_Read_Output_1
        RegisterNS_Read_Output_1_Data => tmp_RegisterNS_Read_Output_1_Data,

        -- Output bus RegisterNS_Read_Output_2
        RegisterNS_Read_Output_2_Data => tmp_RegisterNS_Read_Output_2_Data,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
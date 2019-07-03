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

entity Data_Memory_export is
  port(

    -- Top-level bus DM_input signals
    DM_input_Address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus DM_Data_input signals
    DM_Data_input_Data: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus MemRead signals
    MemRead_Enable: in STD_LOGIC;

    -- Top-level bus MemWrite signals
    MemWrite_Enable: in STD_LOGIC;

    -- Top-level bus DM_Output signals
    DM_Output_Data: out STD_LOGIC_VECTOR(31 downto 0);


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
end Data_Memory_export;



architecture RTL of Data_Memory_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END

  -- Intermediate conversion signal to convert internal types to external ones
  signal tmp_DM_Output_Data : T_SYSTEM_INT32;

begin

    -- Carry converted signals from entity to wrapped outputs
  DM_Output_Data <= std_logic_vector(tmp_DM_Output_Data);

    -- Entity Data_Memory signals
    Data_Memory: entity work.Data_Memory
    port map (
        -- Input bus DM_input
        DM_input_Address => unsigned(DM_input_Address),

        -- Input bus DM_Data_input
        DM_Data_input_Data => signed(DM_Data_input_Data),

        -- Input bus MemRead
        MemRead_Enable => MemRead_Enable,

        -- Input bus MemWrite
        MemWrite_Enable => MemWrite_Enable,

        -- Output bus DM_Output
        DM_Output_Data => tmp_DM_Output_Data,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
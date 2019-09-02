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

begin

    -- Carry converted signals from entity to wrapped outputs
  PC_Output_Address <= std_logic_vector(tmp_PC_Output_Address);

    -- Entity SingleCycleRISCV signals
    SingleCycleRISCV: entity work.SingleCycleRISCV
    port map (
        -- Input bus PC_Input
        PC_Input_Address => unsigned(PC_Input_Address),

        -- Output bus PC_Output
        PC_Output_Address => tmp_PC_Output_Address,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
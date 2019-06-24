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

entity Program_Counter_export is
  port(

    -- Top-level bus PC_Input signals
    PC_Input_Address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus PC_Output signals
    PC_Output_Address: in STD_LOGIC_VECTOR(31 downto 0);


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
end Program_Counter_export;



architecture RTL of Program_Counter_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END


begin

    -- Entity Program_Counter signals
    Program_Counter: entity work.Program_Counter
    port map (
        -- Input bus PC_Input
        PC_Input_Address => unsigned(PC_Input_Address),

        -- Input bus PC_Output
        PC_Output_Address => unsigned(PC_Output_Address),

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
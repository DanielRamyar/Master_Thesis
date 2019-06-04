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

entity Multiplexer_2_input_export is
  port(

    -- Top-level bus Multiplexer_2_Input_Input_2 signals
    Multiplexer_2_Input_Input_2_Value: in STD_LOGIC;

    -- Top-level bus Multiplexer_2_Input_NOTOutput_0 signals
    Multiplexer_2_Input_NOTOutput_0_Value: out STD_LOGIC;

    -- Top-level bus Multiplexer_2_Input_Input_0 signals
    Multiplexer_2_Input_Input_0_Value: in STD_LOGIC;

    -- Top-level bus Multiplexer_2_Input_ANDOutput_0 signals
    Multiplexer_2_Input_ANDOutput_0_Value: out STD_LOGIC;

    -- Top-level bus Multiplexer_2_Input_Input_1 signals
    Multiplexer_2_Input_Input_1_Value: in STD_LOGIC;

    -- Top-level bus Multiplexer_2_Input_ANDOutput_1 signals
    Multiplexer_2_Input_ANDOutput_1_Value: out STD_LOGIC;

    -- Top-level bus Multiplexer_2_Input_OROutput_0 signals
    Multiplexer_2_Input_OROutput_0_Value: out STD_LOGIC;


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
end Multiplexer_2_input_export;



architecture RTL of Multiplexer_2_input_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END


begin

    -- Entity Multiplexer_2_input signals
    Multiplexer_2_input: entity work.Multiplexer_2_input
    port map (
        -- Input bus Multiplexer_2_Input_Input_2
        Multiplexer_2_Input_Input_2_Value => Multiplexer_2_Input_Input_2_Value,

        -- Output bus Multiplexer_2_Input_NOTOutput_0
        Multiplexer_2_Input_NOTOutput_0_Value => Multiplexer_2_Input_NOTOutput_0_Value,

        -- Input bus Multiplexer_2_Input_Input_0
        Multiplexer_2_Input_Input_0_Value => Multiplexer_2_Input_Input_0_Value,

        -- Output bus Multiplexer_2_Input_ANDOutput_0
        Multiplexer_2_Input_ANDOutput_0_Value => Multiplexer_2_Input_ANDOutput_0_Value,

        -- Input bus Multiplexer_2_Input_Input_1
        Multiplexer_2_Input_Input_1_Value => Multiplexer_2_Input_Input_1_Value,

        -- Output bus Multiplexer_2_Input_ANDOutput_1
        Multiplexer_2_Input_ANDOutput_1_Value => Multiplexer_2_Input_ANDOutput_1_Value,

        -- Output bus Multiplexer_2_Input_OROutput_0
        Multiplexer_2_Input_OROutput_0_Value => Multiplexer_2_Input_OROutput_0_Value,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
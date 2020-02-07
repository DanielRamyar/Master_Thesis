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

entity ANDGate_export is
  port(

    -- Top-level bus GateInputs signals
    GateInputs_in_1: in STD_LOGIC;
    GateInputs_in_2: in STD_LOGIC;

    -- Top-level bus GateOutput signals
    GateOutput_out_AND: out STD_LOGIC;


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
end ANDGate_export;



architecture RTL of ANDGate_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END


begin

    -- Entity ANDGate signals
    ANDGate: entity work.ANDGate
    port map (
        -- Input bus GateInputs
        GateInputs_in_1 => GateInputs_in_1,
        GateInputs_in_2 => GateInputs_in_2,

        -- Output bus GateOutput
        GateOutput_out_AND => GateOutput_out_AND,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
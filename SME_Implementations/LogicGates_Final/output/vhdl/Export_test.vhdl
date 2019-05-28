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

entity test_export is
  port(

    -- Top-level bus LogicGates_GateInputs signals
    LogicGates_GateInputs_in_1: in STD_LOGIC;
    LogicGates_GateInputs_in_2: in STD_LOGIC;

    -- Top-level bus LogicGates_GateOutput signals
    LogicGates_GateOutput_out_AND: out STD_LOGIC;
    LogicGates_GateOutput_out_OR: out STD_LOGIC;
    LogicGates_GateOutput_out_NOT: out STD_LOGIC;
    LogicGates_GateOutput_out_XOR: out STD_LOGIC;


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
end test_export;



architecture RTL of test_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END


begin

    -- Entity test signals
    test: entity work.test
    port map (
        -- Input bus LogicGates_GateInputs
        LogicGates_GateInputs_in_1 => LogicGates_GateInputs_in_1,
        LogicGates_GateInputs_in_2 => LogicGates_GateInputs_in_2,

        -- Output bus LogicGates_GateOutput
        LogicGates_GateOutput_out_AND => LogicGates_GateOutput_out_AND,
        LogicGates_GateOutput_out_OR => LogicGates_GateOutput_out_OR,
        LogicGates_GateOutput_out_NOT => LogicGates_GateOutput_out_NOT,
        LogicGates_GateOutput_out_XOR => LogicGates_GateOutput_out_XOR,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
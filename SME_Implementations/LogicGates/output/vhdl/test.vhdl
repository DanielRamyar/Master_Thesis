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

entity test is
  port(


    -- Top-level bus LogicGates_GateInputs signals
    LogicGates_GateInputs_in_1: in T_SYSTEM_BOOL;
    LogicGates_GateInputs_in_2: in T_SYSTEM_BOOL;

    -- Top-level bus LogicGates_GateOutput signals
    LogicGates_GateOutput_out_AND: out T_SYSTEM_BOOL;
    LogicGates_GateOutput_out_OR: out T_SYSTEM_BOOL;



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
end test;

architecture RTL of test is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_LogicGates_ANDGate, RDY_LogicGates_ANDGate : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  LogicGates.ANDGate signals
    LogicGates_ANDGate: entity work.LogicGates_ANDGate
    port map (
        -- Input bus LogicGates_GateInputs
        input_in_1 => LogicGates_GateInputs_in_1,
        input_in_2 => LogicGates_GateInputs_in_2,


        -- Output bus LogicGates_GateOutput
        output_out_AND => LogicGates_GateOutput_out_AND,



        CLK => CLK,
        RDY => RDY_LogicGates_ANDGate,
        FIN => FIN_LogicGates_ANDGate,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_LogicGates_ANDGate <= RDY;

    -- Setup the FIN feedback signals
    FIN <= FIN_LogicGates_ANDGate;

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
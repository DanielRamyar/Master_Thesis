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

entity ANDGate is
  port(


    -- Top-level bus GateInputs signals
    GateInputs_in_1: in T_SYSTEM_BOOL;
    GateInputs_in_2: in T_SYSTEM_BOOL;

    -- Top-level bus GateOutput signals
    GateOutput_out_AND: out T_SYSTEM_BOOL;



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
end ANDGate;

architecture RTL of ANDGate is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_cls_ANDGate, RDY_cls_ANDGate : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  cls_ANDGate signals
    cls_ANDGate: entity work.cls_ANDGate
    port map (
        -- Input bus GateInputs
        m_input_in_1 => GateInputs_in_1,
        m_input_in_2 => GateInputs_in_2,


        -- Output bus GateOutput
        output_out_AND => GateOutput_out_AND,



        CLK => CLK,
        RDY => RDY_cls_ANDGate,
        FIN => FIN_cls_ANDGate,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_cls_ANDGate <= RDY;

    -- Setup the FIN feedback signals
    FIN <= FIN_cls_ANDGate;

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
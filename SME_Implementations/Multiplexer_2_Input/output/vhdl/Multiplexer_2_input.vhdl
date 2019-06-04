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

entity Multiplexer_2_input is
  port(


    -- Top-level bus Multiplexer_2_Input_Input_2 signals
    Multiplexer_2_Input_Input_2_Value: in T_SYSTEM_BOOL;

    -- Top-level bus Multiplexer_2_Input_NOTOutput_0 signals
    Multiplexer_2_Input_NOTOutput_0_Value: out T_SYSTEM_BOOL;

    -- Top-level bus Multiplexer_2_Input_Input_0 signals
    Multiplexer_2_Input_Input_0_Value: in T_SYSTEM_BOOL;

    -- Top-level bus Multiplexer_2_Input_ANDOutput_0 signals
    Multiplexer_2_Input_ANDOutput_0_Value: out T_SYSTEM_BOOL;

    -- Top-level bus Multiplexer_2_Input_Input_1 signals
    Multiplexer_2_Input_Input_1_Value: in T_SYSTEM_BOOL;

    -- Top-level bus Multiplexer_2_Input_ANDOutput_1 signals
    Multiplexer_2_Input_ANDOutput_1_Value: out T_SYSTEM_BOOL;

    -- Top-level bus Multiplexer_2_Input_OROutput_0 signals
    Multiplexer_2_Input_OROutput_0_Value: out T_SYSTEM_BOOL;



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
end Multiplexer_2_input;

architecture RTL of Multiplexer_2_input is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_Multiplexer_2_Input_NOTGate_0, RDY_Multiplexer_2_Input_NOTGate_0 : std_logic;

    signal FIN_Multiplexer_2_Input_ANDGate_0, RDY_Multiplexer_2_Input_ANDGate_0 : std_logic;

    signal FIN_Multiplexer_2_Input_ANDGate_1, RDY_Multiplexer_2_Input_ANDGate_1 : std_logic;

    signal FIN_Multiplexer_2_Input_ORGate_0, RDY_Multiplexer_2_Input_ORGate_0 : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  Multiplexer_2_Input.NOTGate_0 signals
    Multiplexer_2_Input_NOTGate_0: entity work.Multiplexer_2_Input_NOTGate_0
    port map (
        -- Input bus Multiplexer_2_Input_Input_2
        m_input_Value => Multiplexer_2_Input_Input_2_Value,


        -- Output bus Multiplexer_2_Input_NOTOutput_0
        output_0_Value => Multiplexer_2_Input_NOTOutput_0_Value,



        CLK => CLK,
        RDY => RDY_Multiplexer_2_Input_NOTGate_0,
        FIN => FIN_Multiplexer_2_Input_NOTGate_0,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Multiplexer_2_Input.ANDGate_0 signals
    Multiplexer_2_Input_ANDGate_0: entity work.Multiplexer_2_Input_ANDGate_0
    port map (
        -- Input bus Multiplexer_2_Input_NOTOutput_0
        m_input_NOT_0_Value => Multiplexer_2_Input_NOTOutput_0_Value,


        -- Input bus Multiplexer_2_Input_Input_0
        m_input_0_Value => Multiplexer_2_Input_Input_0_Value,


        -- Output bus Multiplexer_2_Input_ANDOutput_0
        output_0_Value => Multiplexer_2_Input_ANDOutput_0_Value,



        CLK => CLK,
        RDY => RDY_Multiplexer_2_Input_ANDGate_0,
        FIN => FIN_Multiplexer_2_Input_ANDGate_0,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Multiplexer_2_Input.ANDGate_1 signals
    Multiplexer_2_Input_ANDGate_1: entity work.Multiplexer_2_Input_ANDGate_1
    port map (
        -- Input bus Multiplexer_2_Input_Input_1
        m_input_1_Value => Multiplexer_2_Input_Input_1_Value,


        -- Input bus Multiplexer_2_Input_Input_2
        m_input_2_Value => Multiplexer_2_Input_Input_2_Value,


        -- Output bus Multiplexer_2_Input_ANDOutput_1
        output_1_Value => Multiplexer_2_Input_ANDOutput_1_Value,



        CLK => CLK,
        RDY => RDY_Multiplexer_2_Input_ANDGate_1,
        FIN => FIN_Multiplexer_2_Input_ANDGate_1,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Multiplexer_2_Input.ORGate_0 signals
    Multiplexer_2_Input_ORGate_0: entity work.Multiplexer_2_Input_ORGate_0
    port map (
        -- Input bus Multiplexer_2_Input_ANDOutput_0
        m_input_0_Value => Multiplexer_2_Input_ANDOutput_0_Value,


        -- Input bus Multiplexer_2_Input_ANDOutput_1
        m_input_1_Value => Multiplexer_2_Input_ANDOutput_1_Value,


        -- Output bus Multiplexer_2_Input_OROutput_0
        output_1_Value => Multiplexer_2_Input_OROutput_0_Value,



        CLK => CLK,
        RDY => RDY_Multiplexer_2_Input_ORGate_0,
        FIN => FIN_Multiplexer_2_Input_ORGate_0,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_Multiplexer_2_Input_NOTGate_0 <= RDY;
    RDY_Multiplexer_2_Input_ANDGate_0 <= FIN_Multiplexer_2_Input_NOTGate_0;
    RDY_Multiplexer_2_Input_ANDGate_1 <= RDY;
    -- Setup the RDY signal for Multiplexer_2_Input.ORGate_0
    process(
      FIN_Multiplexer_2_Input_ANDGate_0, 
      FIN_Multiplexer_2_Input_ANDGate_1
    )
    begin
      if FIN_Multiplexer_2_Input_ANDGate_0 = FIN_Multiplexer_2_Input_ANDGate_1 then
        RDY_Multiplexer_2_Input_ORGate_0 <= FIN_Multiplexer_2_Input_ANDGate_0;
      end if;
    end process;

    -- Setup the FIN feedback signals
    process(
      FIN_Multiplexer_2_Input_NOTGate_0, 
      FIN_Multiplexer_2_Input_ANDGate_0, 
      FIN_Multiplexer_2_Input_ANDGate_1, 
      FIN_Multiplexer_2_Input_ORGate_0
    )
    begin
      if FIN_Multiplexer_2_Input_NOTGate_0 = FIN_Multiplexer_2_Input_ANDGate_0 AND FIN_Multiplexer_2_Input_NOTGate_0 = FIN_Multiplexer_2_Input_ANDGate_1 AND FIN_Multiplexer_2_Input_NOTGate_0 = FIN_Multiplexer_2_Input_ORGate_0 then
        FIN <= FIN_Multiplexer_2_Input_NOTGate_0;
      end if;
    end process;

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
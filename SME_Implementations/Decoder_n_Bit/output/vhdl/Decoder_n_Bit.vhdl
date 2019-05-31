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

entity Decoder_n_Bit is
  port(


    -- Top-level bus DecoderInput_0 signals
    DecoderInput_0_Value: in T_SYSTEM_BOOL;

    -- Top-level bus DecoderNOTInput_0 signals
    DecoderNOTInput_0_Value: out T_SYSTEM_BOOL;

    -- Top-level bus DecoderInput_1 signals
    DecoderInput_1_Value: in T_SYSTEM_BOOL;

    -- Top-level bus DecoderNOTInput_1 signals
    DecoderNOTInput_1_Value: out T_SYSTEM_BOOL;

    -- Top-level bus DecoderOutput_0 signals
    DecoderOutput_0_Value: out T_SYSTEM_BOOL;

    -- Top-level bus DecoderOutput_1 signals
    DecoderOutput_1_Value: out T_SYSTEM_BOOL;

    -- Top-level bus DecoderOutput_2 signals
    DecoderOutput_2_Value: out T_SYSTEM_BOOL;

    -- Top-level bus DecoderOutput_3 signals
    DecoderOutput_3_Value: out T_SYSTEM_BOOL;



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
end Decoder_n_Bit;

architecture RTL of Decoder_n_Bit is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_NOTGate_0, RDY_NOTGate_0 : std_logic;

    signal FIN_NOTGate_1, RDY_NOTGate_1 : std_logic;

    signal FIN_ANDGate_0, RDY_ANDGate_0 : std_logic;

    signal FIN_ANDGate_1, RDY_ANDGate_1 : std_logic;

    signal FIN_ANDGate_2, RDY_ANDGate_2 : std_logic;

    signal FIN_ANDGate_3, RDY_ANDGate_3 : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  NOTGate_0 signals
    NOTGate_0: entity work.NOTGate_0
    port map (
        -- Input bus DecoderInput_0
        m_input_Value => DecoderInput_0_Value,


        -- Output bus DecoderNOTInput_0
        output_0_Value => DecoderNOTInput_0_Value,



        CLK => CLK,
        RDY => RDY_NOTGate_0,
        FIN => FIN_NOTGate_0,
        ENB => ENB,
        RST => RST
    );


    -- Entity  NOTGate_1 signals
    NOTGate_1: entity work.NOTGate_1
    port map (
        -- Input bus DecoderInput_1
        m_input_Value => DecoderInput_1_Value,


        -- Output bus DecoderNOTInput_1
        output_1_Value => DecoderNOTInput_1_Value,



        CLK => CLK,
        RDY => RDY_NOTGate_1,
        FIN => FIN_NOTGate_1,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_0 signals
    ANDGate_0: entity work.ANDGate_0
    port map (
        -- Input bus DecoderNOTInput_0
        m_input_NOT_0_Value => DecoderNOTInput_0_Value,


        -- Input bus DecoderNOTInput_1
        m_input_NOT_1_Value => DecoderNOTInput_1_Value,


        -- Output bus DecoderOutput_0
        output_0_Value => DecoderOutput_0_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_0,
        FIN => FIN_ANDGate_0,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_1 signals
    ANDGate_1: entity work.ANDGate_1
    port map (
        -- Input bus DecoderInput_0
        m_input_0_Value => DecoderInput_0_Value,


        -- Input bus DecoderNOTInput_1
        m_input_NOT_1_Value => DecoderNOTInput_1_Value,


        -- Output bus DecoderOutput_1
        output_1_Value => DecoderOutput_1_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_1,
        FIN => FIN_ANDGate_1,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_2 signals
    ANDGate_2: entity work.ANDGate_2
    port map (
        -- Input bus DecoderNOTInput_0
        m_input_NOT_0_Value => DecoderNOTInput_0_Value,


        -- Input bus DecoderInput_1
        m_input_1_Value => DecoderInput_1_Value,


        -- Output bus DecoderOutput_2
        output_2_Value => DecoderOutput_2_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_2,
        FIN => FIN_ANDGate_2,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_3 signals
    ANDGate_3: entity work.ANDGate_3
    port map (
        -- Input bus DecoderInput_0
        m_input_0_Value => DecoderInput_0_Value,


        -- Input bus DecoderInput_1
        m_input_1_Value => DecoderInput_1_Value,


        -- Output bus DecoderOutput_3
        output_3_Value => DecoderOutput_3_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_3,
        FIN => FIN_ANDGate_3,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_NOTGate_0 <= RDY;
    RDY_NOTGate_1 <= RDY;
    -- Setup the RDY signal for ANDGate_0
    process(
      FIN_NOTGate_0, 
      FIN_NOTGate_1
    )
    begin
      if FIN_NOTGate_0 = FIN_NOTGate_1 then
        RDY_ANDGate_0 <= FIN_NOTGate_0;
      end if;
    end process;
    RDY_ANDGate_1 <= FIN_NOTGate_1;
    RDY_ANDGate_2 <= FIN_NOTGate_0;
    RDY_ANDGate_3 <= RDY;

    -- Setup the FIN feedback signals
    process(
      FIN_NOTGate_0, 
      FIN_NOTGate_1, 
      FIN_ANDGate_0, 
      FIN_ANDGate_1, 
      FIN_ANDGate_2, 
      FIN_ANDGate_3
    )
    begin
      if FIN_NOTGate_0 = FIN_NOTGate_1 AND FIN_NOTGate_0 = FIN_ANDGate_0 AND FIN_NOTGate_0 = FIN_ANDGate_1 AND FIN_NOTGate_0 = FIN_ANDGate_2 AND FIN_NOTGate_0 = FIN_ANDGate_3 then
        FIN <= FIN_NOTGate_0;
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
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

entity Decoder_1_Bit is
  port(


    -- Top-level bus DecoderInput_0 signals
    DecoderInput_0_in_Value: in T_SYSTEM_BOOL;

    -- Top-level bus NOTOutput_0 signals
    NOTOutput_0_out_Value: out T_SYSTEM_BOOL;

    -- Top-level bus DecoderOutput_0 signals
    DecoderOutput_0_out_Value: out T_SYSTEM_BOOL;

    -- Top-level bus DecoderOutput_1 signals
    DecoderOutput_1_out_Value: out T_SYSTEM_BOOL;



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
end Decoder_1_Bit;

architecture RTL of Decoder_1_Bit is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_NOTGate_0, RDY_NOTGate_0 : std_logic;

    signal FIN_ANDGate_0, RDY_ANDGate_0 : std_logic;

    signal FIN_ANDGate_1, RDY_ANDGate_1 : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  NOTGate_0 signals
    NOTGate_0: entity work.NOTGate_0
    port map (
        -- Input bus DecoderInput_0
        m_input_in_Value => DecoderInput_0_in_Value,


        -- Output bus NOTOutput_0
        output_0_out_Value => NOTOutput_0_out_Value,



        CLK => CLK,
        RDY => RDY_NOTGate_0,
        FIN => FIN_NOTGate_0,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_0 signals
    ANDGate_0: entity work.ANDGate_0
    port map (
        -- Input bus NOTOutput_0
        m_input_out_Value => NOTOutput_0_out_Value,


        -- Output bus DecoderOutput_0
        output_0_out_Value => DecoderOutput_0_out_Value,



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
        m_input_in_Value => DecoderInput_0_in_Value,


        -- Output bus DecoderOutput_1
        output_1_out_Value => DecoderOutput_1_out_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_1,
        FIN => FIN_ANDGate_1,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_NOTGate_0 <= RDY;
    RDY_ANDGate_0 <= FIN_NOTGate_0;
    RDY_ANDGate_1 <= RDY;

    -- Setup the FIN feedback signals
    process(
      FIN_NOTGate_0, 
      FIN_ANDGate_0, 
      FIN_ANDGate_1
    )
    begin
      if FIN_NOTGate_0 = FIN_ANDGate_0 AND FIN_NOTGate_0 = FIN_ANDGate_1 then
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
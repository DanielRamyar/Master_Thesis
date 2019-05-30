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


    -- Top-level bus DecoderInput signals
    DecoderInput_in_0: in T_SYSTEM_BOOL;

    -- Top-level bus DecoderOutput signals
    DecoderOutput_out_0: out T_SYSTEM_BOOL;
    DecoderOutput_out_1: out T_SYSTEM_BOOL;



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

    signal FIN_Decoder, RDY_Decoder : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  Decoder signals
    Decoder: entity work.Decoder
    port map (
        -- Input bus DecoderInput
        m_input_in_0 => DecoderInput_in_0,


        -- Output bus DecoderOutput
        output_out_0 => DecoderOutput_out_0,
        output_out_1 => DecoderOutput_out_1,



        CLK => CLK,
        RDY => RDY_Decoder,
        FIN => FIN_Decoder,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_Decoder <= RDY;

    -- Setup the FIN feedback signals
    FIN <= FIN_Decoder;

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
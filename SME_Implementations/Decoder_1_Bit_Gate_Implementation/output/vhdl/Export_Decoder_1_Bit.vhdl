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

entity Decoder_1_Bit_export is
  port(

    -- Top-level bus DecoderInput_0 signals
    DecoderInput_0_in_Value: in STD_LOGIC;

    -- Top-level bus NOTOutput_0 signals
    NOTOutput_0_out_Value: out STD_LOGIC;

    -- Top-level bus DecoderOutput_0 signals
    DecoderOutput_0_out_Value: out STD_LOGIC;

    -- Top-level bus DecoderOutput_1 signals
    DecoderOutput_1_out_Value: out STD_LOGIC;


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
end Decoder_1_Bit_export;



architecture RTL of Decoder_1_Bit_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END


begin

    -- Entity Decoder_1_Bit signals
    Decoder_1_Bit: entity work.Decoder_1_Bit
    port map (
        -- Input bus DecoderInput_0
        DecoderInput_0_in_Value => DecoderInput_0_in_Value,

        -- Output bus NOTOutput_0
        NOTOutput_0_out_Value => NOTOutput_0_out_Value,

        -- Output bus DecoderOutput_0
        DecoderOutput_0_out_Value => DecoderOutput_0_out_Value,

        -- Output bus DecoderOutput_1
        DecoderOutput_1_out_Value => DecoderOutput_1_out_Value,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
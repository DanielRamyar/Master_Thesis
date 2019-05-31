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

entity Decoder_n_Bit_export is
  port(

    -- Top-level bus DecoderInput_0 signals
    DecoderInput_0_Value: in STD_LOGIC;

    -- Top-level bus DecoderNOTInput_0 signals
    DecoderNOTInput_0_Value: out STD_LOGIC;

    -- Top-level bus DecoderInput_1 signals
    DecoderInput_1_Value: in STD_LOGIC;

    -- Top-level bus DecoderNOTInput_1 signals
    DecoderNOTInput_1_Value: out STD_LOGIC;

    -- Top-level bus DecoderOutput_0 signals
    DecoderOutput_0_Value: out STD_LOGIC;

    -- Top-level bus DecoderOutput_1 signals
    DecoderOutput_1_Value: out STD_LOGIC;

    -- Top-level bus DecoderOutput_2 signals
    DecoderOutput_2_Value: out STD_LOGIC;

    -- Top-level bus DecoderOutput_3 signals
    DecoderOutput_3_Value: out STD_LOGIC;


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
end Decoder_n_Bit_export;



architecture RTL of Decoder_n_Bit_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END


begin

    -- Entity Decoder_n_Bit signals
    Decoder_n_Bit: entity work.Decoder_n_Bit
    port map (
        -- Input bus DecoderInput_0
        DecoderInput_0_Value => DecoderInput_0_Value,

        -- Output bus DecoderNOTInput_0
        DecoderNOTInput_0_Value => DecoderNOTInput_0_Value,

        -- Input bus DecoderInput_1
        DecoderInput_1_Value => DecoderInput_1_Value,

        -- Output bus DecoderNOTInput_1
        DecoderNOTInput_1_Value => DecoderNOTInput_1_Value,

        -- Output bus DecoderOutput_0
        DecoderOutput_0_Value => DecoderOutput_0_Value,

        -- Output bus DecoderOutput_1
        DecoderOutput_1_Value => DecoderOutput_1_Value,

        -- Output bus DecoderOutput_2
        DecoderOutput_2_Value => DecoderOutput_2_Value,

        -- Output bus DecoderOutput_3
        DecoderOutput_3_Value => DecoderOutput_3_Value,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
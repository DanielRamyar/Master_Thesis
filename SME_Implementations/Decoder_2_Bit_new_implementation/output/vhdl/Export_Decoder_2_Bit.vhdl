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

entity Decoder_2_Bit_export is
  port(

    -- Top-level bus Input_0 signals
    Input_0_Value: in STD_LOGIC;

    -- Top-level bus Input_1 signals
    Input_1_Value: in STD_LOGIC;

    -- Top-level bus ANDOutput_0 signals
    ANDOutput_0_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_1 signals
    ANDOutput_1_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_2 signals
    ANDOutput_2_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_3 signals
    ANDOutput_3_Value: out STD_LOGIC;


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
end Decoder_2_Bit_export;



architecture RTL of Decoder_2_Bit_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END


begin

    -- Entity Decoder_2_Bit signals
    Decoder_2_Bit: entity work.Decoder_2_Bit
    port map (
        -- Input bus Input_0
        Input_0_Value => Input_0_Value,

        -- Input bus Input_1
        Input_1_Value => Input_1_Value,

        -- Output bus ANDOutput_0
        ANDOutput_0_Value => ANDOutput_0_Value,

        -- Output bus ANDOutput_1
        ANDOutput_1_Value => ANDOutput_1_Value,

        -- Output bus ANDOutput_2
        ANDOutput_2_Value => ANDOutput_2_Value,

        -- Output bus ANDOutput_3
        ANDOutput_3_Value => ANDOutput_3_Value,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
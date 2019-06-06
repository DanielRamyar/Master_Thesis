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

entity FullAdder_2_Bit_export is
  port(

    -- Top-level bus A signals
    A_Value: in STD_LOGIC;

    -- Top-level bus NOT_A signals
    NOT_A_Value: out STD_LOGIC;

    -- Top-level bus B signals
    B_Value: in STD_LOGIC;

    -- Top-level bus NOT_B signals
    NOT_B_Value: out STD_LOGIC;

    -- Top-level bus CarryIn signals
    CarryIn_Value: in STD_LOGIC;

    -- Top-level bus NOT_CarryIn signals
    NOT_CarryIn_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_0 signals
    ANDOutput_0_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_1 signals
    ANDOutput_1_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_2 signals
    ANDOutput_2_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_3 signals
    ANDOutput_3_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_4 signals
    ANDOutput_4_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_5 signals
    ANDOutput_5_Value: out STD_LOGIC;

    -- Top-level bus ANDOutput_6 signals
    ANDOutput_6_Value: out STD_LOGIC;

    -- Top-level bus SUM signals
    SUM_Value: out STD_LOGIC;

    -- Top-level bus CarryOut signals
    CarryOut_Value: out STD_LOGIC;


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
end FullAdder_2_Bit_export;



architecture RTL of FullAdder_2_Bit_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END


begin

    -- Entity FullAdder_2_Bit signals
    FullAdder_2_Bit: entity work.FullAdder_2_Bit
    port map (
        -- Input bus A
        A_Value => A_Value,

        -- Output bus NOT_A
        NOT_A_Value => NOT_A_Value,

        -- Input bus B
        B_Value => B_Value,

        -- Output bus NOT_B
        NOT_B_Value => NOT_B_Value,

        -- Input bus CarryIn
        CarryIn_Value => CarryIn_Value,

        -- Output bus NOT_CarryIn
        NOT_CarryIn_Value => NOT_CarryIn_Value,

        -- Output bus ANDOutput_0
        ANDOutput_0_Value => ANDOutput_0_Value,

        -- Output bus ANDOutput_1
        ANDOutput_1_Value => ANDOutput_1_Value,

        -- Output bus ANDOutput_2
        ANDOutput_2_Value => ANDOutput_2_Value,

        -- Output bus ANDOutput_3
        ANDOutput_3_Value => ANDOutput_3_Value,

        -- Output bus ANDOutput_4
        ANDOutput_4_Value => ANDOutput_4_Value,

        -- Output bus ANDOutput_5
        ANDOutput_5_Value => ANDOutput_5_Value,

        -- Output bus ANDOutput_6
        ANDOutput_6_Value => ANDOutput_6_Value,

        -- Output bus SUM
        SUM_Value => SUM_Value,

        -- Output bus CarryOut
        CarryOut_Value => CarryOut_Value,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
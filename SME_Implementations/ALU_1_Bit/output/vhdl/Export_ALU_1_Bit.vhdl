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

entity ALU_1_Bit_export is
  port(

    -- Top-level bus OperationCode signals
    OperationCode_Value: in STD_LOGIC_VECTOR(7 downto 0);

    -- Top-level bus A signals
    A_Value: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus B signals
    B_Value: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Output signals
    Output_Value: out STD_LOGIC_VECTOR(31 downto 0);


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
end ALU_1_Bit_export;



architecture RTL of ALU_1_Bit_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END

  -- Intermediate conversion signal to convert internal types to external ones
  signal tmp_Output_Value : T_SYSTEM_UINT32;

begin

    -- Carry converted signals from entity to wrapped outputs
  Output_Value <= std_logic_vector(tmp_Output_Value);

    -- Entity ALU_1_Bit signals
    ALU_1_Bit: entity work.ALU_1_Bit
    port map (
        -- Input bus OperationCode
        OperationCode_Value => unsigned(OperationCode_Value),

        -- Input bus A
        A_Value => unsigned(A_Value),

        -- Input bus B
        B_Value => unsigned(B_Value),

        -- Output bus Output
        Output_Value => tmp_Output_Value,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
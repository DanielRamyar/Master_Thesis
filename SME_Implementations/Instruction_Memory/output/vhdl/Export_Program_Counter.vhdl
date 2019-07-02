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

entity Program_Counter_export is
  port(

    -- Top-level bus Instruction_Memory_IM_Input signals
    Instruction_Memory_IM_Input_Address: in STD_LOGIC_VECTOR(31 downto 0);

    -- Top-level bus Instruction_Memory_IM_Output signals
    Instruction_Memory_IM_Output_Instruction: out STD_LOGIC_VECTOR(31 downto 0);


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
end Program_Counter_export;



architecture RTL of Program_Counter_export is  
  -- User defined signals here
  -- #### USER-DATA-SIGNALS-START
  -- #### USER-DATA-SIGNALS-END

  -- Intermediate conversion signal to convert internal types to external ones
  signal tmp_Instruction_Memory_IM_Output_Instruction : T_SYSTEM_UINT32;

begin

    -- Carry converted signals from entity to wrapped outputs
  Instruction_Memory_IM_Output_Instruction <= std_logic_vector(tmp_Instruction_Memory_IM_Output_Instruction);

    -- Entity Program_Counter signals
    Program_Counter: entity work.Program_Counter
    port map (
        -- Input bus Instruction_Memory_IM_Input
        Instruction_Memory_IM_Input_Address => unsigned(Instruction_Memory_IM_Input_Address),

        -- Output bus Instruction_Memory_IM_Output
        Instruction_Memory_IM_Output_Instruction => tmp_Instruction_Memory_IM_Output_Instruction,

        ENB => ENB,
        RST => RST,
        FIN => FIN,
        CLK => CLK
    );

-- User defined processes here
-- #### USER-DATA-CODE-START
-- #### USER-DATA-CODE-END

end RTL;
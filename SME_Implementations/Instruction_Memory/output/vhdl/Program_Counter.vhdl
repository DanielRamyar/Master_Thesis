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

entity Program_Counter is
  port(


    -- Top-level bus Instruction_Memory_IM_Input signals
    Instruction_Memory_IM_Input_Address: in T_SYSTEM_UINT32;

    -- Top-level bus Instruction_Memory_IM_Output signals
    Instruction_Memory_IM_Output_Instruction: out T_SYSTEM_UINT32;



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
end Program_Counter;

architecture RTL of Program_Counter is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_Instruction_Memory_IM, RDY_Instruction_Memory_IM : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  Instruction_Memory.IM signals
    Instruction_Memory_IM: entity work.Instruction_Memory_IM
    generic map(
        reset_Instruction_Memory => (TO_UNSIGNED(3, 32), TO_UNSIGNED(7, 32), TO_UNSIGNED(9, 32), TO_UNSIGNED(8, 32), TO_UNSIGNED(11, 32), TO_UNSIGNED(4, 32), others => TO_UNSIGNED(97, 32))
    )
    port map (
        -- Input bus Instruction_Memory_IM_Input
        m_input_Address => Instruction_Memory_IM_Input_Address,


        -- Output bus Instruction_Memory_IM_Output
        output_Instruction => Instruction_Memory_IM_Output_Instruction,



        CLK => CLK,
        RDY => RDY_Instruction_Memory_IM,
        FIN => FIN_Instruction_Memory_IM,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_Instruction_Memory_IM <= RDY;

    -- Setup the FIN feedback signals
    FIN <= FIN_Instruction_Memory_IM;

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
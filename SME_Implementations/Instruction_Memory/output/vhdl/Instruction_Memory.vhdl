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

entity Instruction_Memory is
  port(


    -- Top-level bus IM_Input signals
    IM_Input_Address: in T_SYSTEM_UINT32;

    -- Top-level bus IM_Output signals
    IM_Output_Instruction: out T_SYSTEM_UINT32;



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
end Instruction_Memory;

architecture RTL of Instruction_Memory is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_IM, RDY_IM : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  IM signals
    IM: entity work.IM
    generic map(
        reset_Instruction_Memory => (TO_UNSIGNED(3, 32), TO_UNSIGNED(7, 32), TO_UNSIGNED(9, 32), TO_UNSIGNED(8, 32), TO_UNSIGNED(11, 32), TO_UNSIGNED(4, 32), others => TO_UNSIGNED(97, 32))
    )
    port map (
        -- Input bus IM_Input
        m_input_Address => IM_Input_Address,


        -- Output bus IM_Output
        output_Instruction => IM_Output_Instruction,



        CLK => CLK,
        RDY => RDY_IM,
        FIN => FIN_IM,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_IM <= RDY;

    -- Setup the FIN feedback signals
    FIN <= FIN_IM;

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
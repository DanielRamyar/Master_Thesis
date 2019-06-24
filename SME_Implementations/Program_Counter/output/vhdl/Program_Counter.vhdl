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


    -- Top-level bus PC_Input signals
    PC_Input_Address: in T_SYSTEM_UINT32;

    -- Top-level bus PC_Output signals
    PC_Output_Address: in T_SYSTEM_UINT32;



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

    signal FIN_PC, RDY_PC : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  PC signals
    PC: entity work.PC
    generic map(
        reset_address_hold => TO_UNSIGNED(0, 32)
    )
    port map (
        -- Input bus PC_Input
        m_input_Address => PC_Input_Address,


        -- Output bus PC_Output
        output_Address => PC_Output_Address,



        CLK => CLK,
        RDY => RDY_PC,
        FIN => FIN_PC,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_PC <= RDY;

    -- Setup the FIN feedback signals
    FIN <= FIN_PC;

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
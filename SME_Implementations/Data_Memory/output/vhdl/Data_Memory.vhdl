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

entity Data_Memory is
  port(


    -- Top-level bus DM_input signals
    DM_input_Address: in T_SYSTEM_UINT32;

    -- Top-level bus DM_Data_input signals
    DM_Data_input_Data: in T_SYSTEM_INT32;

    -- Top-level bus MemRead signals
    MemRead_Enable: in T_SYSTEM_BOOL;

    -- Top-level bus MemWrite signals
    MemWrite_Enable: in T_SYSTEM_BOOL;

    -- Top-level bus DM_Output signals
    DM_Output_Data: out T_SYSTEM_INT32;



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
end Data_Memory;

architecture RTL of Data_Memory is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_DM, RDY_DM : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  DM signals
    DM: entity work.DM
    generic map(
        reset_Data_Memory => (others => TO_SIGNED(0, 32))
    )
    port map (
        -- Input bus DM_input
        m_input_Address => DM_input_Address,


        -- Input bus DM_Data_input
        m_Data_input_Data => DM_Data_input_Data,


        -- Input bus MemRead
        m_MemRead_Enable => MemRead_Enable,


        -- Input bus MemWrite
        m_MemWrite_Enable => MemWrite_Enable,


        -- Output bus DM_Output
        output_Data => DM_Output_Data,



        CLK => CLK,
        RDY => RDY_DM,
        FIN => FIN_DM,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_DM <= RDY;

    -- Setup the FIN feedback signals
    FIN <= FIN_DM;

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
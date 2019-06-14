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

entity ALU_1_Bit is
  port(


    -- Top-level bus OperationCode signals
    OperationCode_Value: in T_SYSTEM_UINT8;

    -- Top-level bus A signals
    A_Value: in T_SYSTEM_UINT32;

    -- Top-level bus B signals
    B_Value: in T_SYSTEM_UINT32;

    -- Top-level bus Output signals
    Output_Value: out T_SYSTEM_UINT32;



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
end ALU_1_Bit;

architecture RTL of ALU_1_Bit is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_ALU, RDY_ALU : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  ALU signals
    ALU: entity work.ALU
    port map (
        -- Input bus OperationCode
        m_OperationCode_Value => OperationCode_Value,


        -- Input bus A
        m_A_Value => A_Value,


        -- Input bus B
        m_B_Value => B_Value,


        -- Output bus Output
        output_Value => Output_Value,



        CLK => CLK,
        RDY => RDY_ALU,
        FIN => FIN_ALU,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_ALU <= RDY;

    -- Setup the FIN feedback signals
    FIN <= FIN_ALU;

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
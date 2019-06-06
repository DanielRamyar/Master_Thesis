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

entity FullAdder_2_Bit is
  port(


    -- Top-level bus A signals
    A_Value: in T_SYSTEM_BOOL;

    -- Top-level bus NOT_A signals
    NOT_A_Value: out T_SYSTEM_BOOL;

    -- Top-level bus B signals
    B_Value: in T_SYSTEM_BOOL;

    -- Top-level bus NOT_B signals
    NOT_B_Value: out T_SYSTEM_BOOL;

    -- Top-level bus CarryIn signals
    CarryIn_Value: in T_SYSTEM_BOOL;

    -- Top-level bus NOT_CarryIn signals
    NOT_CarryIn_Value: out T_SYSTEM_BOOL;

    -- Top-level bus ANDOutput_0 signals
    ANDOutput_0_Value: out T_SYSTEM_BOOL;

    -- Top-level bus ANDOutput_1 signals
    ANDOutput_1_Value: out T_SYSTEM_BOOL;

    -- Top-level bus ANDOutput_2 signals
    ANDOutput_2_Value: out T_SYSTEM_BOOL;

    -- Top-level bus ANDOutput_3 signals
    ANDOutput_3_Value: out T_SYSTEM_BOOL;

    -- Top-level bus ANDOutput_4 signals
    ANDOutput_4_Value: out T_SYSTEM_BOOL;

    -- Top-level bus ANDOutput_5 signals
    ANDOutput_5_Value: out T_SYSTEM_BOOL;

    -- Top-level bus ANDOutput_6 signals
    ANDOutput_6_Value: out T_SYSTEM_BOOL;

    -- Top-level bus SUM signals
    SUM_Value: out T_SYSTEM_BOOL;

    -- Top-level bus CarryOut signals
    CarryOut_Value: out T_SYSTEM_BOOL;



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
end FullAdder_2_Bit;

architecture RTL of FullAdder_2_Bit is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_Invert_A, RDY_Invert_A : std_logic;

    signal FIN_Invert_B, RDY_Invert_B : std_logic;

    signal FIN_Invert_CarryIn, RDY_Invert_CarryIn : std_logic;

    signal FIN_ANDGate_0, RDY_ANDGate_0 : std_logic;

    signal FIN_ANDGate_1, RDY_ANDGate_1 : std_logic;

    signal FIN_ANDGate_2, RDY_ANDGate_2 : std_logic;

    signal FIN_ANDGate_3, RDY_ANDGate_3 : std_logic;

    signal FIN_ANDGate_4, RDY_ANDGate_4 : std_logic;

    signal FIN_ANDGate_5, RDY_ANDGate_5 : std_logic;

    signal FIN_ANDGate_6, RDY_ANDGate_6 : std_logic;

    signal FIN_ORGate_0, RDY_ORGate_0 : std_logic;

    signal FIN_ORGate_1, RDY_ORGate_1 : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  Invert_A signals
    Invert_A: entity work.Invert_A
    port map (
        -- Input bus A
        m_input_Value => A_Value,


        -- Output bus NOT_A
        output_0_Value => NOT_A_Value,



        CLK => CLK,
        RDY => RDY_Invert_A,
        FIN => FIN_Invert_A,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Invert_B signals
    Invert_B: entity work.Invert_B
    port map (
        -- Input bus B
        m_input_Value => B_Value,


        -- Output bus NOT_B
        output_0_Value => NOT_B_Value,



        CLK => CLK,
        RDY => RDY_Invert_B,
        FIN => FIN_Invert_B,
        ENB => ENB,
        RST => RST
    );


    -- Entity  Invert_CarryIn signals
    Invert_CarryIn: entity work.Invert_CarryIn
    port map (
        -- Input bus CarryIn
        m_input_Value => CarryIn_Value,


        -- Output bus NOT_CarryIn
        output_0_Value => NOT_CarryIn_Value,



        CLK => CLK,
        RDY => RDY_Invert_CarryIn,
        FIN => FIN_Invert_CarryIn,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_0 signals
    ANDGate_0: entity work.ANDGate_0
    port map (
        -- Input bus NOT_A
        m_input_0_Value => NOT_A_Value,


        -- Input bus NOT_B
        m_input_1_Value => NOT_B_Value,


        -- Input bus CarryIn
        m_input_2_Value => CarryIn_Value,


        -- Output bus ANDOutput_0
        output_0_Value => ANDOutput_0_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_0,
        FIN => FIN_ANDGate_0,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_1 signals
    ANDGate_1: entity work.ANDGate_1
    port map (
        -- Input bus NOT_A
        m_input_0_Value => NOT_A_Value,


        -- Input bus B
        m_input_1_Value => B_Value,


        -- Input bus NOT_CarryIn
        m_input_2_Value => NOT_CarryIn_Value,


        -- Output bus ANDOutput_1
        output_0_Value => ANDOutput_1_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_1,
        FIN => FIN_ANDGate_1,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_2 signals
    ANDGate_2: entity work.ANDGate_2
    port map (
        -- Input bus A
        m_input_0_Value => A_Value,


        -- Input bus NOT_B
        m_input_1_Value => NOT_B_Value,


        -- Input bus NOT_CarryIn
        m_input_2_Value => NOT_CarryIn_Value,


        -- Output bus ANDOutput_2
        output_0_Value => ANDOutput_2_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_2,
        FIN => FIN_ANDGate_2,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_3 signals
    ANDGate_3: entity work.ANDGate_3
    port map (
        -- Input bus A
        m_input_0_Value => A_Value,


        -- Input bus B
        m_input_1_Value => B_Value,


        -- Input bus CarryIn
        m_input_2_Value => CarryIn_Value,


        -- Output bus ANDOutput_3
        output_0_Value => ANDOutput_3_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_3,
        FIN => FIN_ANDGate_3,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_4 signals
    ANDGate_4: entity work.ANDGate_4
    port map (
        -- Input bus A
        m_input_0_Value => A_Value,


        -- Input bus CarryIn
        m_input_1_Value => CarryIn_Value,


        -- Output bus ANDOutput_4
        output_0_Value => ANDOutput_4_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_4,
        FIN => FIN_ANDGate_4,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_5 signals
    ANDGate_5: entity work.ANDGate_5
    port map (
        -- Input bus B
        m_input_0_Value => B_Value,


        -- Input bus CarryIn
        m_input_1_Value => CarryIn_Value,


        -- Output bus ANDOutput_5
        output_0_Value => ANDOutput_5_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_5,
        FIN => FIN_ANDGate_5,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ANDGate_6 signals
    ANDGate_6: entity work.ANDGate_6
    port map (
        -- Input bus A
        m_input_0_Value => A_Value,


        -- Input bus B
        m_input_1_Value => B_Value,


        -- Output bus ANDOutput_6
        output_0_Value => ANDOutput_6_Value,



        CLK => CLK,
        RDY => RDY_ANDGate_6,
        FIN => FIN_ANDGate_6,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ORGate_0 signals
    ORGate_0: entity work.ORGate_0
    port map (
        -- Input bus ANDOutput_0
        m_input_0_Value => ANDOutput_0_Value,


        -- Input bus ANDOutput_1
        m_input_1_Value => ANDOutput_1_Value,


        -- Input bus ANDOutput_2
        m_input_2_Value => ANDOutput_2_Value,


        -- Input bus ANDOutput_3
        m_input_3_Value => ANDOutput_3_Value,


        -- Output bus SUM
        output_1_Value => SUM_Value,



        CLK => CLK,
        RDY => RDY_ORGate_0,
        FIN => FIN_ORGate_0,
        ENB => ENB,
        RST => RST
    );


    -- Entity  ORGate_1 signals
    ORGate_1: entity work.ORGate_1
    port map (
        -- Input bus ANDOutput_4
        m_input_0_Value => ANDOutput_4_Value,


        -- Input bus ANDOutput_5
        m_input_1_Value => ANDOutput_5_Value,


        -- Input bus ANDOutput_6
        m_input_2_Value => ANDOutput_6_Value,


        -- Output bus CarryOut
        output_1_Value => CarryOut_Value,



        CLK => CLK,
        RDY => RDY_ORGate_1,
        FIN => FIN_ORGate_1,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_Invert_A <= RDY;
    RDY_Invert_B <= RDY;
    RDY_Invert_CarryIn <= RDY;
    -- Setup the RDY signal for ANDGate_0
    process(
      FIN_Invert_A, 
      FIN_Invert_B
    )
    begin
      if FIN_Invert_A = FIN_Invert_B then
        RDY_ANDGate_0 <= FIN_Invert_A;
      end if;
    end process;
    -- Setup the RDY signal for ANDGate_1
    process(
      FIN_Invert_A, 
      FIN_Invert_CarryIn
    )
    begin
      if FIN_Invert_A = FIN_Invert_CarryIn then
        RDY_ANDGate_1 <= FIN_Invert_A;
      end if;
    end process;
    -- Setup the RDY signal for ANDGate_2
    process(
      FIN_Invert_B, 
      FIN_Invert_CarryIn
    )
    begin
      if FIN_Invert_B = FIN_Invert_CarryIn then
        RDY_ANDGate_2 <= FIN_Invert_B;
      end if;
    end process;
    RDY_ANDGate_3 <= RDY;
    RDY_ANDGate_4 <= RDY;
    RDY_ANDGate_5 <= RDY;
    RDY_ANDGate_6 <= RDY;
    -- Setup the RDY signal for ORGate_0
    process(
      FIN_ANDGate_0, 
      FIN_ANDGate_1, 
      FIN_ANDGate_2, 
      FIN_ANDGate_3
    )
    begin
      if FIN_ANDGate_0 = FIN_ANDGate_1 AND FIN_ANDGate_0 = FIN_ANDGate_2 AND FIN_ANDGate_0 = FIN_ANDGate_3 then
        RDY_ORGate_0 <= FIN_ANDGate_0;
      end if;
    end process;
    -- Setup the RDY signal for ORGate_1
    process(
      FIN_ANDGate_4, 
      FIN_ANDGate_5, 
      FIN_ANDGate_6
    )
    begin
      if FIN_ANDGate_4 = FIN_ANDGate_5 AND FIN_ANDGate_4 = FIN_ANDGate_6 then
        RDY_ORGate_1 <= FIN_ANDGate_4;
      end if;
    end process;

    -- Setup the FIN feedback signals
    process(
      FIN_Invert_A, 
      FIN_Invert_B, 
      FIN_Invert_CarryIn, 
      FIN_ANDGate_0, 
      FIN_ANDGate_1, 
      FIN_ANDGate_2, 
      FIN_ANDGate_3, 
      FIN_ANDGate_4, 
      FIN_ANDGate_5, 
      FIN_ANDGate_6, 
      FIN_ORGate_0, 
      FIN_ORGate_1
    )
    begin
      if FIN_Invert_A = FIN_Invert_B AND FIN_Invert_A = FIN_Invert_CarryIn AND FIN_Invert_A = FIN_ANDGate_0 AND FIN_Invert_A = FIN_ANDGate_1 AND FIN_Invert_A = FIN_ANDGate_2 AND FIN_Invert_A = FIN_ANDGate_3 AND FIN_Invert_A = FIN_ANDGate_4 AND FIN_Invert_A = FIN_ANDGate_5 AND FIN_Invert_A = FIN_ANDGate_6 AND FIN_Invert_A = FIN_ORGate_0 AND FIN_Invert_A = FIN_ORGate_1 then
        FIN <= FIN_Invert_A;
      end if;
    end process;

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
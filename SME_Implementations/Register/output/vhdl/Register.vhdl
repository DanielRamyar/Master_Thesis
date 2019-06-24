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

entity vhdl_Register is
  port(


    -- Top-level bus RegisterNS_Read_Register_1 signals
    RegisterNS_Read_Register_1_address: in T_SYSTEM_UINT32;

    -- Top-level bus RegisterNS_Read_Register_2 signals
    RegisterNS_Read_Register_2_address: in T_SYSTEM_UINT32;

    -- Top-level bus RegisterNS_Write_Register signals
    RegisterNS_Write_Register_address: in T_SYSTEM_UINT32;

    -- Top-level bus RegisterNS_Write_Data signals
    RegisterNS_Write_Data_Data: in T_SYSTEM_INT32;

    -- Top-level bus RegisterNS_Write_Control signals
    RegisterNS_Write_Control_Enable: in T_SYSTEM_BOOL;

    -- Top-level bus RegisterNS_Read_Output_1 signals
    RegisterNS_Read_Output_1_Data: out T_SYSTEM_INT32;

    -- Top-level bus RegisterNS_Read_Output_2 signals
    RegisterNS_Read_Output_2_Data: out T_SYSTEM_INT32;



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
end vhdl_Register;

architecture RTL of vhdl_Register is  
    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END


    -- Process ready triggers

    signal FIN_RegisterNS_Register, RDY_RegisterNS_Register : std_logic;


    -- The primary ready driver signal
    signal RDY : std_logic;

begin


    -- Entity  RegisterNS.Register signals
    RegisterNS_Register: entity work.RegisterNS_Register
    generic map(
        reset_m_register => (others => TO_SIGNED(0, 32))
    )
    port map (
        -- Input bus RegisterNS_Read_Register_1
        m_read_1_address => RegisterNS_Read_Register_1_address,


        -- Input bus RegisterNS_Read_Register_2
        m_read_2_address => RegisterNS_Read_Register_2_address,


        -- Input bus RegisterNS_Write_Register
        m_write_address => RegisterNS_Write_Register_address,


        -- Input bus RegisterNS_Write_Data
        m_write_data_Data => RegisterNS_Write_Data_Data,


        -- Input bus RegisterNS_Write_Control
        m_write_control_Enable => RegisterNS_Write_Control_Enable,


        -- Output bus RegisterNS_Read_Output_1
        output_1_Data => RegisterNS_Read_Output_1_Data,


        -- Output bus RegisterNS_Read_Output_2
        output_2_Data => RegisterNS_Read_Output_2_Data,



        CLK => CLK,
        RDY => RDY_RegisterNS_Register,
        FIN => FIN_RegisterNS_Register,
        ENB => ENB,
        RST => RST
    );


    -- Connect ready signals
    RDY_RegisterNS_Register <= RDY;

    -- Setup the FIN feedback signals
    FIN <= FIN_RegisterNS_Register;

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